import 'package:flutter/material.dart';

class BackgroundCover extends StatelessWidget {
  const BackgroundCover({Key? key}) : super(key: key);

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