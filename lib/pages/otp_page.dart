import 'package:flutter/material.dart';
import 'package:shopping_app/pages/otp_verify_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'OTP Number',
                  style: TextStyle(fontSize: 30,color: Color(0xFFEF6969),fontStyle:FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Please enter your email address. you will receive a link to create or set a new password via number ",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Enter Number", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpVerifyPage()));
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
            ],
          ),
        ),
      ),
    );
  }
}
