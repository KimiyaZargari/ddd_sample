import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';
import 'package:ddd_sample/domain/core/enums.dart';

import '../core/failures.dart';
import '../core/usecase.dart';

class SaveUserType implements UseCase<bool, UserType> {
  IAuthRepository authRepository;

  SaveUserType(this.authRepository);

  @override
  Future<Either<StorageFailure, bool>> call(userType) async {
    if (await authRepository.saveUserType(userType)) {
      return right(true);
    } else {
      return left(const CouldNotStore());
    }

  }
}
