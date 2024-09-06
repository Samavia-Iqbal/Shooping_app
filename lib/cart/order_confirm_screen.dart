import 'package:flutter/material.dart';
import 'package:shopping_app/cart/confirm_order.dart';
import 'package:shopping_app/cart/payment_methods.dart';
import 'package:shopping_app/cart/shipping_address_screen.dart';

import '../widgets/container_button_models.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Confirm Order',style: TextStyle(color: Color(0xFFEF6969),fontSize: 25,fontStyle: FontStyle.italic),),
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Shipping Address",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2),
                      ]),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Dear Programmer",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ShippingAddressScreen()));
                                },
                                child: const Text(
                                  'Change',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFEF6969),
                                  ),
                                )),
                          ],
                        ),
                        const Text(
                          "3 Newbridge Court",
                          style: TextStyle(fontSize: 16),
                        ),
                        const Text(
                          "chino Hills,CA,97345,United States",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Payment Method",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PaymentMethods()));
                      },
                      child: const Text(
                        'Change',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFEF6969),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2),
                        ]),
                    child: Image.asset("assets/images/visa.png"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "**** **** **** 3947",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Delivery Method",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2),
                          ]),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/fedex.png",
                            height: 35,
                          ),
                          const Text("2-7 Days")
                        ],
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2),
                          ]),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Home Delivery",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFEF6969),
                            ),
                          ),
                          Text("2-7 Days")
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub-Total',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  Text(
                    "300PKR",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xFFEF6969),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping Fee',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  Text(
                    "15PKR",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xFFEF6969),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 30,
                color: Colors.black,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Text(
                    "350PKR",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Color(0xFFEF6969),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfirmOrder()));
                },
                child: ContainerButtonModels(
                  itext: "Confirm Order",
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: const Color(0xFFEF6969),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
