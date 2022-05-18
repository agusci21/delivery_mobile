import 'package:delivery_app/src/features/login-register/pages/login-register/widgets/backgound.dart';
import 'package:delivery_app/src/features/login-register/pages/login-register/widgets/box_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/buttons.dart';
import '../widgets/textfields.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundCover(),
          BoxForm(
            margin: EdgeInsets.only(
                top: size.height * .25,
                left: size.width * .1,
                right: size.width * .1),
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 20),
                child: const Text(
                  'Cree su cuenta',
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
                hintText: 'Nombre',
                icon: Icons.person,
                keyboardType: TextInputType.text,
              ),
              const LoginRegisterInputs(
                hintText: 'Apellido',
                icon: Icons.person_outline,
                keyboardType: TextInputType.text,
              ),
              const LoginRegisterInputs(
                hintText: 'Teléfono',
                icon: Icons.phone,
                keyboardType: TextInputType.phone,
              ),
              const LoginRegisterInputs(
                hintText: 'Contraseña',
                icon: Icons.lock_outline_rounded,
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              const LoginRegisterInputs(
                hintText: 'Repetir contraseña',
                icon: Icons.lock_outline_rounded,
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              const LoginRegisterButton(
                hintText: 'Registrarse',
              )
            ],
          ),
          const CircularNoImageLogo(),
          const _BackButton(),
        ],
      ),
    );
  }
}

class CircularNoImageLogo extends StatelessWidget {
  const CircularNoImageLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () {},
          child: const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/img/user_profile.png'),
          ),
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(left: 7, top: 7),
        child: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 25,
              color: Colors.white,
            )),
      ),
    );
  }
}
