import 'package:flutter/material.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({Key? key, required this.hintText, required this.onPressed}) : super(key: key);

  final String hintText;
  final Function() onPressed; 

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * .03, bottom: 20),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            hintText,
            style: const TextStyle(color: Colors.black),
          )),
    );
  }
}
