import 'package:flutter/material.dart';
import 'package:shopping_app/pages/recovery_page.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpVerifyPage extends StatefulWidget {
  const OtpVerifyPage({super.key});

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(10.0));
  }

  TextEditingController textEditingController = TextEditingController(text: "");
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
            children: [
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter OTP",
                  style: TextStyle(fontSize: 30, color: Color(0xFFEF6969),fontStyle:FontStyle.italic,fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 100),
              const Text(
                "Please enter the OTP code that we have sent you to your number,Please check your number and enter here OTP to verify",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 50),
              TextFieldPin(
                  textController: textEditingController,
                  autoFocus: false,
                  codeLength: 4,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 60.0,
                  margin: 10,
                  selectedBoxSize: 55.0,
                  textStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  defaultDecoration: _pinPutDecoration.copyWith(
                      border: Border.all(color: Colors.grey)),
                  selectedDecoration: _pinPutDecoration,
                  onChange: (code) {
                    setState(() {});
                  }),
              const SizedBox(
                height: 30,
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
                  "Verify",
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
