import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:programow_flutter_getx_boilerplate/features/auth/domain/auth_controller.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/data/providers/user_api.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/data/repositories/user_repository.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() {
      return AuthController(
          repository: UserRepository(
              apiClient: UserApiClient(httpClient: http.Client())));
    });
  }
}
