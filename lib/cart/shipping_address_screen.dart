import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/container_button_models.dart';

import 'order_confirm_screen.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Add Shipping Address',style: TextStyle(color: Color(0xFFEF6969),fontSize: 23,fontStyle: FontStyle.italic),),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Full Name"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Mobile Number"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Address"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "City"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "State/Province/Region"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Zip Code(Postel Code)"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Country"),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderConfirmScreen()));
                  },
                  child: ContainerButtonModels(
                    itext: "Confirm Payment",
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: const Color(0xFFEF6969),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
