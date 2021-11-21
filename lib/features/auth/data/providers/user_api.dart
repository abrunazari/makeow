import 'dart:convert';
import 'package:programow_flutter_getx_boilerplate/features/auth/data/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class UserApiClient {
  final http.Client httpClient;
  UserApiClient({@required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<User> listMyModel =
            jsonResponse.map((model) => User.fromJson(model)).toList();
        return listMyModel;
      } else
        print('erro');
    } catch (_) {}
  }

  login(String user, String pass) async {
    return Future.delayed(
        Duration(seconds: 1),
        () => User(
            id: "sljfbgsjdhgfbjfdhg",
            email: "johnDoe@gmailcom",
            token: "eyJsdfgbsdjfgsbkdjfgbsjdfgbsjfhg"));
  }
}
