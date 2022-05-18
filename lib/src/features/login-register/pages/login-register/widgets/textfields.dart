import 'package:flutter/material.dart';

class LoginRegisterInputs extends StatelessWidget {
  const LoginRegisterInputs(
      {Key? key,
      this.keyboardType,
      this.hintText,
      this.icon,
      this.obscureText = false,
      this.controller})
      : super(key: key);
  final TextInputType? keyboardType;
  final String? hintText;
  final IconData? icon;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(hintText: hintText, prefixIcon: Icon(icon)),
      obscureText: obscureText,
    );
  }
}
