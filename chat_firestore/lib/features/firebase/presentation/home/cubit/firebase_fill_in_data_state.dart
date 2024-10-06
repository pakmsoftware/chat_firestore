part of 'firebase_fill_in_data_cubit.dart';

@freezed
class FirebaseFillInDataState with _$FirebaseFillInDataState {
  factory FirebaseFillInDataState({
    /// Is adding user to firestore
    required bool isSubmitting,

    /// Is user added succesfully
    required bool submitSuccess,

    /// Filled name
    required String name,

    /// Filled surname
    required String surname,

    /// Filled age
    int? age,

    /// Filled height
    int? height,

    /// Avatar
    String? avatar,

    /// Picked image file avatar
    File? localAvatar,

    /// User ID
    String? userId,

    /// User created date
    DateTime? createdDate,
  }) = _FirebaseFillInDataState;
}
