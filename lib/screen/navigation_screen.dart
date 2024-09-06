import 'package:flutter/material.dart';
import 'package:shopping_app/cart/cart_screen.dart';
import 'package:shopping_app/detail/qr_code.dart';
import 'package:shopping_app/favorite/favorite_screen.dart';
import 'package:shopping_app/profile/profile_screen.dart';
import 'package:shopping_app/home/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int cuttentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    QrCode(),
    FavoriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttentIndex = 2;
          });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: const Color(0xFFEF6969),
        child: const Icon(
          Icons.qr_code,
          size: 30,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    cuttentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: cuttentIndex == 0
                      ? const Color(0xFFEF6969)
                      : Colors.grey.shade600,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    cuttentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: cuttentIndex == 1
                      ? const Color(0xFFEF6969)
                      : Colors.grey.shade600,
                )),
            const SizedBox(
              width: 15,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    cuttentIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: cuttentIndex == 3
                      ? const Color(0xFFEF6969)
                      : Colors.grey.shade600,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    cuttentIndex = 4;
                  });
                },
                icon: Icon(
                  Icons.person_pin,
                  size: 30,
                  color: cuttentIndex == 4
                      ? const Color(0xFFEF6969)
                      : Colors.grey.shade600,
                )),
          ],
        ),
      ),
      body: pages[cuttentIndex],
    );
  }
}
