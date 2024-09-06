import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/products_details_popup.dart';

class ProductScreen extends StatelessWidget {
  List<String> images = [
    "assets/images/sweeter.jpeg",
    "assets/images/bak.jpeg",
    "assets/images/pink.jpeg",
    "assets/images/fashion.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Overview',style: TextStyle(color: Color(0xFFEF6969),fontStyle: FontStyle.italic,fontSize: 25),),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider.sliderType1(
                  imagesLink: images,
                  isAssets: true,
                  autoPlay: true,
                  sliderHeight: 430,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sunde Winter',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hooded Jacket',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "300PKR",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEF6969),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cool, windy weather is on its way. Send him out"
                  "\nthe door in a jacket he wants to warm ."
                  " Warm\nZooper Hooded Jacket,",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: const Color(0x1F989797),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color(0xFFEF6969),
                      ),
                    ),
                  ),
                  ProductsDetailsPopup(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
