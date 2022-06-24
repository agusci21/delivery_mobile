import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:delivery_app/src/features/home/pages/home-page/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => _controller.signOut(),
            child: const Text(
              'Cerrar sesion',
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }
}
