import 'package:delivery_app/src/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:delivery_app/src/features/home/pages/home-page/home_page.dart';
import 'package:delivery_app/src/features/login-register/pages/login-register/login/login_page.dart';
import 'package:delivery_app/src/features/login-register/pages/login-register/register/register_page.dart';

User userSession =
    User.fromJson(GetStorage().read('user') ?? <String, dynamic>{});

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery',
      initialRoute: userSession.id != null ? 'home' : '/',
      getPages: [
        GetPage(name: '/', page: () => const LoginPage()),
        GetPage(name: '/register', page: () => const RegisterPage()),
        GetPage(name: '/home', page: () => HomePage()),
      ],
      theme: ThemeData(
          primaryColor: Colors.amber,
          colorScheme: const ColorScheme(
            primary: Colors.amber,
            secondary: Colors.amber,
            brightness: Brightness.light,
            onBackground: Colors.grey,
            background: Colors.grey,
            error: Colors.grey,
            onPrimary: Colors.grey,
            onSecondary: Colors.grey,
            onError: Colors.grey,
            onSurface: Colors.grey,
            surface: Colors.grey,
          )),
      navigatorKey: Get.key,
    );
  }
}
