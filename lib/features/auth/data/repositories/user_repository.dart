import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/features/auth/data/providers/user_api.dart';

class UserRepository {
  final UserApiClient apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }

  login(user, pass) {
    return apiClient.login(user, pass);
  }
}
