import 'package:delivery_app/src/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [_BackgroundCover(), _BoxForm(), _ImageCover()],
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

class _BackgroundCover extends StatelessWidget {
  const _BackgroundCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      height: size.height * .4,
      color: Colors.amber,
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

class _BoxForm extends StatelessWidget {
  const _BoxForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      margin: EdgeInsets.only(top: size.height * .35, left: 50, right: 50),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black54, blurRadius: 10, offset: Offset(0, 2))
      ]),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            const LoginInputs(
              hintText: 'Correo electronico',
              icon: Icons.email_sharp,
              keyboardType: TextInputType.emailAddress,
            ),
            const LoginInputs(
              hintText: 'Contraseña',
              icon: Icons.lock_outline_rounded,
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            const LoginButton()
          ],
        ),
      ),
    );
  }
}

class LoginInputs extends StatelessWidget {
  const LoginInputs(
      {Key? key,
      this.keyboardType,
      this.hintText,
      this.icon,
      this.obscureText = false})
      : super(key: key);
  final TextInputType? keyboardType;
  final String? hintText;
  final IconData? icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(hintText: hintText, prefixIcon: Icon(icon)),
      obscureText: obscureText,
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * .03, bottom: size.height * .1),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Login',
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}
