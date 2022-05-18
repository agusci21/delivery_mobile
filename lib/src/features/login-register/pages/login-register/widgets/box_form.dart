import 'package:flutter/material.dart';

class BoxForm extends StatelessWidget {
  const BoxForm({Key? key, this.children = const <Widget>[], this.margin})
      : super(key: key);
  final List<Widget> children;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      margin: margin,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black54, blurRadius: 10, offset: Offset(0, 2))
      ]),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}
