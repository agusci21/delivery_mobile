import 'package:flutter/material.dart';

class BoxForm extends StatelessWidget {
  const BoxForm({Key? key, this.children = const <Widget>[] }) : super(key: key);
  final List<Widget> children;
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
          children: children,
        ),
      ),
    );
  }
}