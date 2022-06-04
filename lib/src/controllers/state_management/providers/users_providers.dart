import 'package:delivery_app/src/models/user_model.dart';
import 'package:get/get.dart';
import 'package:delivery_app/src/controllers/enviroment/enviroment.dart';

class UserProvider extends GetConnect {
  final String url = '${Enviroment.apiUrl}api/users';

  Future<Response> create(User user) async {
    Response response = await post('$url/create', user.toJson(),
        headers: {'Content-Type': 'application/json'});
    return response;
  }
}
