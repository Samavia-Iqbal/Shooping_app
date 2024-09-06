import 'package:flutter/material.dart';
import 'package:shopping_app/pages/login_page.dart';
import 'package:shopping_app/screen/navigation_screen.dart';

import '../home/home_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/logos.jpeg'),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Enter Name',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Enter Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Enter Number',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Enter Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavigationScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(55),
                        backgroundColor: const Color(0xFFEF6969),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text(
                      "Create Account",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an Account?",
                        style: TextStyle(fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                                color: Color(0xFFEF6969),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
