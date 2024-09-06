import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  List<String> images = [
    "assets/images/sweeter.jpeg",
    "assets/images/bak.jpeg",
    "assets/images/pink.jpeg",
    "assets/images/fashion.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(right: 40,left:40 ),
          child: Column(children: [
            Container(
              width: 600,
              height: 500,
              child: Image.asset('assets/images/shop.png'),
            ),
            const Text(
              "DP Shop ",
              style: TextStyle(
                  color: Color(0xFFEF6969),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
              fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "DP Shop Online Buying Products!!",
              style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              " Online Payment",
              style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
              fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 20,),
           const Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.facebook,size: 40,color: Colors.blue),
               SizedBox(width: 40,),
               Icon(Icons.tiktok,size: 40,color: Colors.lightGreen),
               SizedBox(width: 40,),
               Icon(Icons.youtube_searched_for,size: 40,color: Colors.blueGrey,),
             ]
           )
          ]),
        ));
  }
}
