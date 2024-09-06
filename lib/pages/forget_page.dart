import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/pages/otp_page.dart';
import 'package:shopping_app/pages/recovery_page.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  bool clrButton = false;
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Forget Password',
                  style: TextStyle(fontSize: 30,   color: Color(0xFFEF6969),fontStyle:FontStyle.italic,fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Please enter your email address. you will receive a "
                    "link to create or set a new password via email ",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Email",
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        emailController.clear();
                      });
                    },
                    child: const Icon(
                      CupertinoIcons.multiply,
                      color: Color(0xFFEF6969),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecoveryPage()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color(0xFFEF6969),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  "Send Code",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.italic),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("OR"),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpPage()));
                      },
                      child: const Text(
                        'Verify Using Number',
                        style: TextStyle(
                            color: Color(0xFFEF6969),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
