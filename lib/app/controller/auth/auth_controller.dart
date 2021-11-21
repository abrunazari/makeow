import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/app/data/model/user.dart';
import 'package:programow_flutter_getx_boilerplate/app/data/repository/user_repository.dart';

class AuthController extends GetxController {
  final UserRepository repository;
  AuthController({@required this.repository}) : assert(repository != null);

  final _user = User().obs;
  get user => this._user.value;
  set user(value) => this._user.value = value;

  editar(post) {
    print('editar');
  }

  delete(id) {
    print('deletar');
  }

  login() {
    print('login');
  }
}
