import 'package:flutter/material.dart';
import 'package:splashscreen_login/pages/detail_page.dart';
import 'package:splashscreen_login/pages/home_page.dart';
import 'package:splashscreen_login/pages/login_page.dart';
import 'package:splashscreen_login/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => const HomePage(),
        '/detail': (_) => const DetailPage()
      },
    );
  }
}
