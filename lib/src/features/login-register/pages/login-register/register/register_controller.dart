import 'package:delivery_app/src/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery_app/src/controllers/state_management/providers/users_providers.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();

  final userProvider = UserProvider();

  void register() async {
    String email = emailController.text.trim();
    String firstName = firstNameController.text;
    String lastName = lastNameController.text;
    String phoneNumber = phoneNumberController.text.trim();
    String password = passwordController.text.trim();
    String repeatPassword = repeatPasswordController.text.trim();

    if (isValidForm(
        email, firstName, lastName, phoneNumber, password, repeatPassword)) {
      final user = User(
          email: email,
          name: firstName,
          lastname: lastName,
          phone: phoneNumber,
          password: password);
      /*Response response = */await userProvider.create(user);
      Get.snackbar('Formulario valido', 'Listo para la peticion http');
    }
  }

  bool isValidForm(
    String email,
    String firstName,
    String lastName,
    String phoneNumber,
    String password,
    String repeatPassword,
  ) {
    if (email.isEmpty) {
      Get.snackbar('Formulario no valido', 'El email no debe estar vacio');
      return false;
    }

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Formulario no valido', 'El email es incorrecto');
      return false;
    }

    if (firstName.isEmpty) {
      Get.snackbar('Formulario no valido', 'El Nombre no debe estar vacio');
      return false;
    }

    if (lastName.isEmpty) {
      Get.snackbar('Formulario no valido', 'El apellido no debe estar vacio');
      return false;
    }

    if (phoneNumber.isEmpty) {
      Get.snackbar('Formulario no valido', 'El telefono no debe estar vacio');
      return false;
    }

    if (password.isEmpty) {
      Get.snackbar('Formulario no valido', 'La contraseña no debe estar vacia');
      return false;
    }

    if (repeatPassword != password) {
      Get.snackbar('Formulario no valido', 'Las contraseñas no coinciden');
      return false;
    }
    return true;
  }
}
