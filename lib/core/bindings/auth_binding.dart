import 'package:get/get.dart';

import 'package:programow_flutter_getx_boilerplate/features/auth/domain/usecases/login.usecase.dart';

import 'package:programow_flutter_getx_boilerplate/features/auth/ui/controllers/auth.controller.dart';

import 'package:programow_flutter_getx_boilerplate/features/auth/data/repositories/user.repository_impl.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() {
      return AuthController(
          loginUsecase: LoginUsecase(userRepository: UserRepositoryImpl()));
    });
  }
}
