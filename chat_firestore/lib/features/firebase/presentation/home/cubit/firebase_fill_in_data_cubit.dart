import 'dart:io';

import 'package:chat_firestore/features/firebase/domain/models/firebase_storage_upload_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_storage_repository.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_repository.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/features/firebase/utils/string_extension.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat_firestore/core/helper/future_failable_extension.dart';
import 'package:image_picker/image_picker.dart';

part 'firebase_fill_in_data_state.dart';
part 'firebase_fill_in_data_cubit.freezed.dart';

/// Cubit controlling adding firestore user when it hasn't been done yet
class FirebaseFillInDataCubit extends Cubit<FirebaseFillInDataState> {
  FirebaseFillInDataCubit(
    this._dbRepository,
    this._storageRepository,
  ) : super(FirebaseFillInDataState(
          isSubmitting: false,
          submitSuccess: false,
          name: '',
          surname: '',
        ));

  final IFirestoreRepository _dbRepository;
  final IFirebaseStorageRepository _storageRepository;

  /// Initialize form values for editing mode from [user]
  void initForEdit(FirestoreUser user) {
    emit(state.copyWith(
      age: user.age,
      height: user.height,
      name: user.name,
      surname: user.surname,
      avatar: user.avatar,
      userId: user.id,
      createdDate: user.createdDate,
    ));
  }

  // Submit page, add user to firestore
  Future<void> submit({bool isEdit = false}) async {
    emit(state.copyWith(isSubmitting: true));
    final authUser = sl<FirebaseAuthControllerCubit>().state.loggedUser;

    // Firstly upload avatar to storage
    String? downloadLink;
    if (state.localAvatar != null) {
      final ext = state.localAvatar!.path.fileExtension;
      final fileName = (state.userId ?? '') + ext;
      final ref = 'user_avatars/$fileName';

      await _storageRepository.uploadFile(
        FirebaseStorageUploadRequest(
          file: state.localAvatar!,
          refPath: ref,
        ),
      );

      downloadLink = (await _storageRepository.getFileUrl(ref)).getData();
    }

    // Add user to firestore
    final isAddSuccess = (await _dbRepository.addUser(
          FirestoreUser(
            id: authUser?.uid ?? '',
            name: state.name,
            surname: state.surname,
            createdDate: isEdit && state.createdDate != null
                ? state.createdDate!
                : DateTime.timestamp(),
            age: state.age,
            height: state.height,
            avatar: downloadLink ?? state.avatar,
          ),
        ))
            .getData() ??
        false;

    emit(state.copyWith(
      isSubmitting: false,
      submitSuccess: isAddSuccess,
    ));
  }

  /// Sets typed name from form
  void setName(String value) {
    emit(state.copyWith(name: value));
  }

  /// Sets typed surname from form
  void setSurname(String value) {
    emit(state.copyWith(surname: value));
  }

  /// Sets typed age from form
  void setAge(String value) {
    final age = int.tryParse(value);
    if (age == null) {
      return;
    }

    emit(state.copyWith(age: age));
  }

  /// Sets typed height from form
  void setHeight(String value) {
    final height = int.tryParse(value);
    if (height == null) {
      return;
    }

    emit(state.copyWith(height: height));
  }

  /// Gets avatar from camera using image_picker
  Future<void> setAvatar() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxHeight: 480,
      maxWidth: 480,
    );

    if (pickedImage != null) {
      emit(
        state.copyWith(
          localAvatar: File(
            pickedImage.path,
          ),
        ),
      );
    }
  }
}
