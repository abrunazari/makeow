import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/domain/entities/user.entity.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/domain/usecases/login.usecase.dart';

class AuthController extends GetxController {
  final LoginUsecase loginUsecase;
  AuthController({@required this.loginUsecase}) : assert(loginUsecase != null);

  final _user = User().obs;
  get user => this._user.value;
  set user(value) => this._user.value = value;

  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Invalid Email";
    }
    return null;
  }

  String validatePassword(String value) {
    if (!GetUtils.isLengthGreaterThan(value, 5)) {
      return "Password must be at least 6 digits";
    }
    return null;
  }

  login() {
    print("authenticating");
    if (loginFormKey.currentState.validate()) {
      loginUsecase
          .call(LoginParams(
              email: emailController.text, password: passwordController.text))
          .then((res) => {print(res)});
    }
  }

  logout() {
    print('logout');
  }

  register() {
    print('register');
  }
}
