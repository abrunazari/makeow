import 'package:dartz/dartz.dart';

import 'package:programow_flutter_getx_boilerplate/features/auth/domain/entities/user.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/domain/repositories/user.repository.dart';

User user = User(id: 1, email: "johndoe@gmail.com", name: "gnsdfgnsdfg");

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl();

  @override
  login(String username, String password) async {
    return Future.delayed(Duration(seconds: 1), () => Right(user));
  }

  @override
  logout() async {
    return Future.delayed(Duration(seconds: 1), () => Right("token"));
  }

  @override
  register(String username, String password) async {
    return Future.delayed(Duration(milliseconds: 200), () => Right(user));
  }
}
