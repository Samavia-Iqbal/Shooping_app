import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shopping_app/home/home_screen.dart';
import 'package:shopping_app/pages/login_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body: "Lorem ipsum is simply dummy text of the printing and"
              " typesetting industry. "
              "Lorem Ipsum has been the industry's standard"
              " dummy text ever since the 1500s, ",
          image: Image.asset(
            "assets/images/shop.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body: "Lorem ipsum is simply dummy text of the printing and"
              " typesetting industry. "
              "Lorem Ipsum has been the industry's standard"
              " dummy text ever since the 1500s, ",
          image: Image.asset(
            "assets/images/undraw.png",
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body: " Lorem ipsum is simply dummy text of the printing and"
              " typesetting industry. "
              "Lorem Ipsum has been the industry's standard"
              " dummy text ever since the 1500s, ",
          image: Image.asset(
            "assets/images/shopping_cart.png",
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55),
                  backgroundColor: const Color(0xFFEF6969),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: const Text(
                "Let's Shop",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showBackButton: true,
      showDoneButton: false,
      back: const Text(
        "Back",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFEF6969),
        ),
      ),
      next: const Text('Next',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFFEF6969),
          )),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeColor: const Color(0xFFEF6969),
          color: Colors.black26,
          activeSize: const Size(20, 10),
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
