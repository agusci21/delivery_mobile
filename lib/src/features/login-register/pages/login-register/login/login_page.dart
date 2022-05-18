import 'package:delivery_app/src/features/login-register/pages/login-register/widgets/backgound.dart';
import 'package:delivery_app/src/features/login-register/pages/login-register/widgets/box_form.dart';
import 'package:delivery_app/src/features/login-register/pages/login-register/widgets/buttons.dart';
import 'package:delivery_app/src/features/login-register/pages/login-register/widgets/textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCover(),
          BoxForm(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 40),
                child: const Text(
                  'Ingrese sus datos',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const LoginRegisterInputs(
                hintText: 'Correo electronico',
                icon: Icons.email_sharp,
                keyboardType: TextInputType.emailAddress,
              ),
              const LoginRegisterInputs(
                hintText: 'Contraseña',
                icon: Icons.lock_outline_rounded,
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              const LoginRegisterButton()
            ],
          ),
          const _ImageCover()
        ],
      ),
      bottomNavigationBar: _NewAcountText(),
    );
  }
}

class _ImageCover extends StatelessWidget {
  const _ImageCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/img/delivery.png',
              height: 130,
              width: 130,
            ),
          ),
        ),
        const Text('Delivery SQL',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black))
      ],
    );
  }
}

class _NewAcountText extends StatelessWidget {
  _NewAcountText({Key? key}) : super(key: key);
  final LoginController _loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '¿No tienes una cuenta?',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        const SizedBox(
          width: 7,
        ),
        GestureDetector(
          onTap: () => _loginController.goToRegisterPage(),
          child: const Text('Registrate aquí',
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 17)),
        ),
      ],
    );
  }
}
