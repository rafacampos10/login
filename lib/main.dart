import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de Login',
      theme: ThemeData(
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (_) => const SplashPage(),
        "/login": (_) => const LoginPage(),
      },
    );
  }
}
