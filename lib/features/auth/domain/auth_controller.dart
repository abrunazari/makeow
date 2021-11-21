import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/data/models/user.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/data/repositories/user_repository.dart';

class AuthController extends GetxController {
  final UserRepository repository;
  AuthController({@required this.repository}) : assert(repository != null);

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
      repository
          .login(emailController.text, passwordController.text)
          .then((auth) {
        print(auth);

        // passwordController.clear();
      });
    }
    // return repository.login(user, pass);

    // print('login');
  }

  logout() {
    print('logout');
  }
}
