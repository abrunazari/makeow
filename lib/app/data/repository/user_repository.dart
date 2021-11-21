import 'package:meta/meta.dart';
import 'package:programow_flutter_getx_boilerplate/app/data/provider/users_api.dart';

class UserRepository {
  final UsersApiClient apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }

  getId(id) {
    return apiClient.getId(id);
  }
}
