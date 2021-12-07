import 'package:dartz/dartz.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';

import 'package:programow_flutter_getx_boilerplate/features/auth/domain/entities/user.entity.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> login(String username, String password);
  Future<Either<Failure, String>> logout();
  Future<Either<Failure, User>> register(String username, String password);
}
