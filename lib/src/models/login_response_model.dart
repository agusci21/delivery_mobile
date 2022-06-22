// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

import 'package:delivery_app/src/models/user_model.dart';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    LoginResponse({
        this.user,
        this.token,
        this.success = false
    });

    User? user;
    String? token;
    bool success;

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        user: User.fromJson(json["user"]),
        token: json["token"],
        success: true
    );

    Map<String, dynamic> toJson() => {
        "user": user!.toJson(),
        "token": token,
    };
}
