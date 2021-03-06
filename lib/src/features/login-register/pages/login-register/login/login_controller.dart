import 'package:delivery_app/src/controllers/state_management/providers/users_providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final userProvider = UserProvider();

  void goToRegisterPage() {
    Get.toNamed('/register');
  }

  void goToHomePage() {
    Get.offNamedUntil('/home', (_) => false);
  }

  void login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (!isValidForm(email, password)) return;
    final response = await userProvider.login(email, password);
    if (response.success) {
      response.user!.token = response.token!;
      GetStorage().write('user', response.user!.toJson());
      goToHomePage();
    } else {
      Get.snackbar('Login fallido', 'Credenciales invalidas');
    }
  }

  bool isValidForm(String email, String password) {
    if (email.isEmpty) {
      Get.snackbar('Formulario no valido', 'El email no debe estar vacio');
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Formulario no valido', 'El email es incorrecto');
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar('Formulario no valido', 'La contraseña no debe estar vacia');
      return false;
    }
    return true;
  }
}
