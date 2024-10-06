import 'package:chat_firestore/core/error/failure.dart';
import 'package:dartz/dartz.dart';

extension FutureFailableExtension<T> on Either<Failure, T> {
  /// If future failable does not return any specific result, isSuccess is true when there is no failure in API call,
  bool get isSuccess => fold((l) => false, (r) => true);

  /// Gets data from Either -> null or T object
  T? getData() => fold((l) => null, (r) => r);
}
