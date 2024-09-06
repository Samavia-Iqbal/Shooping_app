import 'package:flutter/cupertino.dart';

class Category extends ChangeNotifier {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "All", image: "assets/images/sweeter.jpeg"),
  Category(title: "Category", image: "assets/images/bak.jpeg"),
  Category(title: "Top", image: "assets/images/pink.jpeg"),
  Category(title: "Recommended", image: "assets/images/fashion.jpeg"),];
