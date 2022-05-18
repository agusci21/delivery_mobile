import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();

  void register() {
    String email = emailController.text.trim();
    String firstName = firstNameController.text;
    String lastName = lastNameController.text;
    String phoneNumber = phoneNumberController.text.trim();
    String password = passwordController.text.trim();
    String repeatPassword = repeatPasswordController.text.trim();

    if (isValidForm(
        email, firstName, lastName, phoneNumber, password, repeatPassword)) {
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
