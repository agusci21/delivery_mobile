import 'package:flutter/material.dart';

class LoginRegisterInputs extends StatelessWidget {
  const LoginRegisterInputs(
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