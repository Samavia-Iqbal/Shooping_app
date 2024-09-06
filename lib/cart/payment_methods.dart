import 'package:flutter/material.dart';
import 'package:shopping_app/cart/shipping_address_screen.dart';
import 'package:shopping_app/widgets/container_button_models.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Payment Method',style: TextStyle(color: Color(0xFFEF6969),fontSize: 25,fontStyle: FontStyle.italic),),
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
                  Container(
                    width: size.width,
                    height: 55,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: _type == 1
                          ? Border.all(
                              width: 1,
                              color: const Color(0xFFEF6969),
                            )
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 1,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: const Color(0xFFEF6969),
                              ),
                              Text("Amazon Pay",
                                  style: _type == 1
                                      ? const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey)),
                            ],
                          ),
                          Image.asset(
                            "assets/images/amazon.png",
                            width: 90,
                            height: 70,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: _type == 2
                          ? Border.all(
                              width: 1,
                              color: const Color(0xFFEF6969),
                            )
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Radio(
                                value: 2,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: const Color(0xFFEF6969),
                              ),
                              Text("Credit Card",
                                  style: _type == 2
                                      ? const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey))
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/images/mastercard.png",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            "assets/images/visa.png",
                            width: 50,
                            height: 30,
                            fit: BoxFit.fill,
                          )
                        ],
                      ),
                    )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: _type == 3
                          ? Border.all(
                              width: 1,
                              color: const Color(0xFFEF6969),
                            )
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0xFFEF6969),
                                ),
                                Text("PayPal",
                                    style: _type == 3
                                        ? const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )
                                        : const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                            Image.asset(
                              "assets/images/paypal.png",
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: _type == 4
                          ? Border.all(
                              width: 1,
                              color: const Color(0xFFEF6969),
                            )
                          : Border.all(width: 0.3, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 4,
                                groupValue: _type,
                                onChanged: _handleRadio,
                                activeColor: const Color(0xFFEF6969),
                              ),
                              Text("Google Pay",
                                  style: _type == 4
                                      ? const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        )
                                      : const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey)),
                            ],
                          ),
                          Image.asset(
                            "assets/images/lo.png",
                            width: 70,
                            height: 50,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
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
                    height: 70,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ShippingAddressScreen()));
                    },
                    child: ContainerButtonModels(
                      itext: "Confirm Payment",
                      containerWidth: size.width,
                      bgColor: const Color(0xFFEF6969),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
