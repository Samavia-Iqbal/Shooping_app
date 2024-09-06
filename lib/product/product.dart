import 'package:flutter/material.dart';





class Product {
  final String title;
  final String image;
  final double price;
  final List<Color> colors;
  final double rate;
  var quantity2;



  Product( {
    required this.title,
    required this.image,
    required this.colors,
    required this.rate,
    required this.quantity2,
    required this.price,
  });
}

final List<Product> Products = [
  Product(
      title: "Sunde Winter",

      image: 'assets/images/sweeter,jpeg',
      price: 500,
      colors: [Colors.black, Colors.blue, Colors.orange],
      rate: 4.8,
       quantity2: '1',
  ),
  Product(
      title: "Sweeter Win",
      image: 'assets/images/bak.jpeg',
      price:2000,
      colors: [Colors.brown, Colors.red, Colors.pink],
      rate: 4.8,
      quantity2: '1',),
  Product(
      title: "Pink Woo",
      image: 'assets/images/pink.jpeg',
      price: 500,
      colors: [Colors.black, Colors.lightBlueAccent, Colors.deepPurpleAccent],
      rate: 4.8,
      quantity2: '1',),
  Product(
      title: "Woolen Winter",
      image: 'assets/images/fashion.jpeg',
      price: 5000,
      colors: [Colors.redAccent, Colors.amberAccent, Colors.teal],
      rate: 4.8,
      quantity2: '1',)];
