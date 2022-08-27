import 'package:dartz/dartz.dart';
import 'package:ddd_sample/domain/auth/i_auth_repository.dart';

import '../core/failures.dart';
import '../core/usecase.dart';

class SaveToken implements UseCase<bool, String> {
  IAuthRepository authRepository;

  SaveToken(this.authRepository);

  @override
  Future<Either<StorageFailure, bool>> call(token) async {
    if (await authRepository.saveToken(token)) {
      return right(true);
    } else {
      return left(const CouldNotStore());
    }
    //   if (loginResponseModel is InfluencerLoginResponseModel) {
    //     return right(await authRepository.saveInfluencerData(loginResponseModel));
    //   } else if (loginResponseModel is BusinessLoginResponseModel) {
    //     return right(await authRepository.saveBusinessData(loginResponseModel));
    //   } else {
    //     return left(const CouldNotStore());
    //   }
  }
}
