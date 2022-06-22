import 'dart:convert';

import 'package:delivery_app/src/models/login_response_model.dart';
import 'package:delivery_app/src/models/user_model.dart';
import 'package:get/get.dart';
import 'package:delivery_app/src/controllers/enviroment/enviroment.dart';

class UserProvider extends GetConnect {
  final String usersUrl = '${Enviroment.apiUrl}api/users';
  final String authUrl = '${Enviroment.apiUrl}api/auth';

  Future<Response> create(User user) async {
    Response response = await post('$usersUrl/create', user.toJson(),
        headers: {'Content-Type': 'application/json'});
    return response;
  }

  Future<LoginResponse> login(String email, String password) async {
    late LoginResponse successLoginResponse;
    LoginResponse failedLoginResponse = LoginResponse();
    final response = await post(
        '$authUrl/login', json.encode({"email": email, "password": password}),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode != 200) return failedLoginResponse;
    successLoginResponse = LoginResponse.fromJson(response.body);
    return successLoginResponse;
  }
}
