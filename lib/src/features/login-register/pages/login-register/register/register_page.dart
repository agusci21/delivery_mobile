import 'package:delivery_app/src/features/login-register/pages/login-register/register/register_controller.dart';
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
    final registerController = Get.put(RegisterController());
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
              LoginRegisterInputs(
                hintText: 'Correo electronico',
                controller: registerController.emailController,
                icon: Icons.email_sharp,
                keyboardType: TextInputType.emailAddress,
              ),
              LoginRegisterInputs(
                hintText: 'Nombre',
                controller: registerController.firstNameController,
                icon: Icons.person,
                keyboardType: TextInputType.text,
              ),
              LoginRegisterInputs(
                hintText: 'Apellido',
                controller: registerController.lastNameController,
                icon: Icons.person_outline,
                keyboardType: TextInputType.text,
              ),
              LoginRegisterInputs(
                hintText: 'Tel??fono',
                controller: registerController.phoneNumberController,
                icon: Icons.phone,
                keyboardType: TextInputType.phone,
              ),
              LoginRegisterInputs(
                hintText: 'Contrase??a',
                controller: registerController.passwordController,
                icon: Icons.lock_outline_rounded,
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              LoginRegisterInputs(
                hintText: 'Repetir contrase??a',
                controller: registerController.repeatPasswordController,
                icon: Icons.lock_outline_rounded,
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              LoginRegisterButton(
                hintText: 'Registrarse',
                onPressed: () => registerController.register(),
              )
            ],
          ),
          CircularNoImageLogo(registerController),
          const _BackButton(),
        ],
      ),
    );
  }
}

class CircularNoImageLogo extends StatelessWidget {
  const CircularNoImageLogo(
    this.controller, {
    Key? key,
  }) : super(key: key);
  final RegisterController controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () {
            controller.showAlertDialog(context);
          },
          child: GetBuilder<RegisterController>(
            builder: ((controller) => CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  backgroundImage: controller.imageFile != null
                      ? FileImage(controller.imageFile!)
                      : const AssetImage('assets/img/user_profile.png')
                          as ImageProvider,
                )),
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
