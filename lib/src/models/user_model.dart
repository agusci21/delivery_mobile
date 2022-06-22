// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
    this.id,
    this.lastname,
    this.image,
  });

  int? id;
  String email;
  String password;
  String name;
  String? lastname;
  String phone;
  String? image;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        password: json["password"],
        name: json["name"],
        lastname: json["lastname"],
        phone: json["phone"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "password": password,
        "name": name,
        "lastname": lastname,
        "phone": phone,
        "image": image,
      };
}
