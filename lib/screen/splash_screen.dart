import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_app/screen/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/images.jpeg'),
                    fit: BoxFit.cover,
                    opacity: 0.8),
                color: Colors.black),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 238, 80, 80),
                  size: 250,
                ),
                Text(
                  'DP SHOP',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                )
              ],
            )));
  }
}
