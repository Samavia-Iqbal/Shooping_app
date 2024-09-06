import 'package:flutter/material.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<RecoveryPage> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Enter Code & Password',
                style: TextStyle(fontSize: 25,color: Color(0xFFEF6969),fontStyle:FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Reset Code",
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "New Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color(0xFFEF6969),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  "Reset Password",
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
