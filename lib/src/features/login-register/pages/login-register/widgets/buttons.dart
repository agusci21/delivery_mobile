import 'package:flutter/material.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({Key? key}) : super(key: key);

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