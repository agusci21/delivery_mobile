import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [_BackgroundCover(), _ImageCover()],
      ),
      bottomNavigationBar: const _NewAcountText(),
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
  const _NewAcountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          '¿No tienes una cuenta?',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        SizedBox(
          width: 7,
        ),
        Text('Registrate aquí',
            style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 17)),
      ],
    );
  }
}
