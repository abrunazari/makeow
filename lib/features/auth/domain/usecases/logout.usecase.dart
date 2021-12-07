import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:programow_flutter_getx_boilerplate/core/errors/failures.dart';
import 'package:programow_flutter_getx_boilerplate/core/usecase/usecase.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/domain/repositories/user.repository.dart';

class LogoutUsecase implements UseCase<String, LoginParams> {
  final UserRepository userRepository;

  LogoutUsecase({@required this.userRepository});

  @override
  Future<Either<Failure, String>> call(LoginParams params) async {
    return await userRepository.logout();
  }
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  LoginParams({this.email, this.password});

  @override
  List<Object> get props => [email, password];
}
