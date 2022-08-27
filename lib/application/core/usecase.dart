import 'package:dartz/dartz.dart';

import 'failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

// class NoParams extends Equatable {
//   @override
//   List<Object> get props => [];
// }
