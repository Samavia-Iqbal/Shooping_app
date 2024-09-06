import 'package:flutter/material.dart';
import 'package:shopping_app/pages/login_page.dart';
import 'package:shopping_app/screen/navigation_screen.dart';
import 'package:shopping_app/screen/on_boarding_screen.dart';
import 'package:shopping_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
           primaryColor: const Color(0xFFEF6969)
      ),
      home: const SplashScreen()
    );
  }
}


