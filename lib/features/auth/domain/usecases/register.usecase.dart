import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/core/usecase/usecase.dart';

import 'package:programow_flutter_getx_boilerplate/features/auth/domain/entities/user.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/domain/repositories/user.repository.dart';

class RegisterUsecase implements UseCase<User, RegisterParams> {
  final UserRepository userRepository;

  RegisterUsecase({@required this.userRepository});

  @override
  Future<Either<Failure, User>> call(RegisterParams params) async {
    return await userRepository.register(params.email, params.password);
  }
}

class RegisterParams extends Equatable {
  final String email;
  final String password;

  RegisterParams({this.email, this.password});

  @override
  List<Object> get props => [email, password];
}
