import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ddd_sample/domain/core/enums.dart';

part 'failures.freezed.dart';

abstract class Failure {
  // const factory Failure() = _Failure;
}

@freezed
class NetworkFailure extends Failure with _$NetworkFailure {
  const factory NetworkFailure.unauthenticatedUser(String? message) = UnauthenticatedUser;

  const factory NetworkFailure.serverError(String? message) = ServerError;

  const factory NetworkFailure.unverifiedUser(
      {required String? message,
      required UserType? userType,
      required String? email}) = UnverifiedUser;

  const factory NetworkFailure.notFound(String? message) = NotFound;

  const factory NetworkFailure.badRequest(String? message) = BadRequest;

  const factory NetworkFailure.unprocessableEntity(String? message) = UnprocessableEntity;
}

@freezed
class StorageFailure extends Failure with _$StorageFailure {
  const factory StorageFailure.couldNotStore() = CouldNotStore;

  const factory StorageFailure.couldNotFetchData() = CouldNotFetchData;
}
//
// @freezed
// class AuthFailure extends Failure with _$AuthFailure {
//   const factory AuthFailure.wrongEmailAndPassword() = WrongEmailAndPassword;
//
//   const factory AuthFailure.noAccountWithThisEmail() = NoAccountWithThisEmail;
//
//   const factory AuthFailure.accountAlreadyExists() = AccountAlreadyExists;
// }
