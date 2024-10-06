import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverConnectionFailure() = ServerConnectionFailure;

  const factory Failure.invalidResponse() = InvalidResponseFailure;

  const factory Failure.badRequest({String? message}) = BadRequestFailure;

  const factory Failure.serverError() = ServerErrorFailure;

  const factory Failure.unknown() = UnknownErrorFailure;

  const factory Failure.notFound() = NotFoundErrorFailure;
  const factory Failure.emailNotFound() = EmailNotFoundErrorFailure;

  const factory Failure.canNotOpenWebsite() = CanNotOpenWebsiteFailure;

  const factory Failure.notAuthenticated() = NotAuthenticatedFailure;

  const factory Failure.identifierHasAlreadyBeenAdded() =
      IdentifierHasAlreadyBeenAddedFailure;

  const factory Failure.videoLoadedFailure() = VideoLoadedFailure;
  const factory Failure.noInternetConnectionFailure() =
      NoInternetConnectionFailure;
}
