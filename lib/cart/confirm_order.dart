import 'package:flutter/material.dart';

import '../widgets/container_button_models.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Success',style: TextStyle(color: Color(0xFFEF6969),fontSize: 30,fontStyle: FontStyle.italic),),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 50,
              left: 50,
            ),
            child: Image.asset(
              "assets/images/tick.png",
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const Text("Success",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          const Text(
            "Your order will be delivered soon",
            style: TextStyle(fontSize: 15),
          ),
          const Text("Thank You! for choosing our app.",
              style: TextStyle(fontSize: 15)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ContainerButtonModels(
              itext: "Confirm Order",
              containerWidth: MediaQuery.of(context).size.width,
              bgColor: const Color(0xFFEF6969),
            ),
          )
        ],
      ),
    );
  }
}
