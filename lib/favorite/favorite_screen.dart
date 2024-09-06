import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/container_button_models.dart';
class FavoriteScreen extends StatelessWidget {
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

  FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Favorite', style: TextStyle(color: Color(0xFFEF6969),fontSize: 30,fontStyle: FontStyle.italic),),
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
                         const Align(
                           alignment: Alignment.topRight,
                           child:
                              Icon(
                                CupertinoIcons.heart_fill,
                                color: Color(0xFFEF6969),
                              ),


                         ) ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),


              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "400PKR",
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const PaymentMethods()));
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
