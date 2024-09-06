import 'package:flutter/material.dart';
import 'package:shopping_app/screen/navigation_screen.dart';
import 'forget_page.dart';
import 'sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              height: 100,
            ),
            Image.asset('assets/images/logos.jpeg'),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
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
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Enter Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ForgetPage()));
                        },
                        child: const Text(
                          'Forget Password',
                          style: TextStyle(
                              color: Color(0xFFEF6969),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
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
                      "LOG IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have an Account?",
                        style: TextStyle(fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: const Text(
                            'Sign Up',
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
