import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/cart/payment_methods.dart';
import 'package:shopping_app/widgets/container_button_models.dart';

class CartScreen extends StatelessWidget {
  List imageList = [
    "assets/images/sweeter.jpeg",
    "assets/images/bak.jpeg",
    "assets/images/pink.jpeg",
    "assets/images/fashion.jpeg",
  ];
  List productTitles = [
    "Sunde Winter",
    "Sweeter Win",
    "Pink Woo",
    "Woolen Winter"
  ];
  List prices = ["300PKR", "500PKR", "200PKR", "600PKR"];
  List reviews = ["540", "390", "100", "400"];

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Cart',style: TextStyle(color: Color(0xFFEF6969),fontSize: 30,fontStyle: FontStyle.italic),),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: imageList.length,
                    itemBuilder: (context, index) => Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(
                                  splashRadius: 15,
                                  activeColor: const Color(0xFFEF6969),
                                  value: true,
                                  onChanged: (val) {}),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  imageList[index],
                                  height: 90,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    productTitles[index],
                                    style: const TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Hooded Jacket",
                                    style: TextStyle(
                                        color: Colors.black26, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    prices[index],
                                    style: const TextStyle(
                                        color: Color(0xFFEF6969),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.greenAccent,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    CupertinoIcons.plus,
                                    color: Color(0xFFEF6969),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Select All",
                    style:  TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Checkbox(
                      splashRadius: 20,
                      activeColor: const Color(0xFFEF6969),
                      value: false,
                      onChanged: (val) {}),
                ],
              ),
              const Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "1600PKR",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFEF6969),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentMethods()));
                },
                child: ContainerButtonModels(
                  itext: "CheckOut",
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: const Color(0xFFEF6969),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
