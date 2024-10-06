import 'dart:async';

import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class RepositoryRequestHandler<T> {
  FutureFailable<T> call({
    required Future<T> Function() request,
  }) async {
    try {
      return Right(await request());
    } catch (error) {
      Fimber.e(error.toString());

      final failure = handleError(error);

      String errorMessage = '\n$error, $failure\n';
      final currentStackTrace = StackTrace.current;

      if (error is DioException) {
        final requestData = 'Request data: ${error.requestOptions.data}';
        final responseData = 'Response data: ${error.response?.data}';

        // EL-1703: Do not log any user data (email, password) to Crashlytics for login, activation, password reset
        // Therefore avoid logging request data sent in all Account/* endpoints in API
        final requestPath =
            'Request path: ${error.requestOptions.baseUrl}${error.requestOptions.path}';
        if (error.requestOptions.path.contains('Account/')) {
          errorMessage += '$requestPath\n$responseData';
        } else {
          errorMessage += '$requestPath\n$requestData\n$responseData';
        }
      }
      unawaited(FirebaseCrashlytics.instance
          .recordError(errorMessage, currentStackTrace));

      return left(failure);
    }
  }

  Failure handleError(Object e) {
    Fimber.e("Exception (${e.runtimeType}): $e");

    if (e is Error) {
      Fimber.e(e.stackTrace.toString());
    }

    if (e is DioException) {
      Fimber.e("Path: ${e.response?.requestOptions.path ?? 'Unknown'}");
      return _handleDioError(e);
    }

    if (e is TypeError) {
      return const Failure.invalidResponse();
    }

    return const Failure.unknown();
  }

  Failure _handleDioError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout) {
      return const Failure.serverConnectionFailure();
    }

    if (e.type == DioExceptionType.badResponse) {
      final Response? response = e.response;

      if (response == null) {
        return const Failure.serverError();
      }

      Fimber.e('DioErrorResponse: $response');

      final statusCode = response.statusCode;

      if (statusCode == 404) {
        return const Failure.notFound();
      }

      if (statusCode != null && statusCode >= 400 && statusCode <= 499) {
        return Failure.badRequest(message: _tryParseErrorMessage(response));
      }

      if (statusCode != null && statusCode >= 500 && statusCode <= 599) {
        return const Failure.serverError();
      }

      if (statusCode != 400) {
        return const Failure.invalidResponse();
      }

      Fimber.e('Data: ${_tryParseErrorMessage(response)}');
    }

    // Check if error can be caused by potential no internet connection
/*
    if (e.isNoInternetConnectionError) {
      return const Failure.noInternetConnectionFailure();
    }
*/

    return const Failure.unknown();
  }

  String? _tryParseErrorMessage(Response<dynamic> response) {
    final data = response.data;
    if (data is! Map<String, dynamic>) {
      return null;
    }

    final errorMessage = data['detail'];
    if (errorMessage is! String) {
      return null;
    }

    return errorMessage;
  }
}
