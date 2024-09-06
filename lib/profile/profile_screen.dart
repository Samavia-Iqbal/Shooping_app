import 'package:flutter/material.dart';
import '../pages/login_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/girl.jpeg',
            fit: BoxFit.fill,
            height: size.height,
            width: size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 300,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    children: [
                                      const CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                          'assets/images/girl.jpeg',
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(
                                                  225, 95, 225, 99)),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.black45),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 9,
                                        ),
                                        child: const Text(
                                          "ADD FRIEND",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.pink.shade300),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 9,
                                          horizontal: 9,
                                        ),
                                        child: const Text(
                                          "FOLLOW",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontStyle: FontStyle.italic,

                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Samavia Iqbal",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEF6969),
                                ),
                              ),
                              const Text(
                                "Flutter Developer",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Flutter is an open source framework by Google for building beautiful,"
                                " natively compiled, multi-platform applications from a single codebase",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Divider(),
                        SizedBox(
                          height: 65,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                children: [
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFEF6969),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "2300",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              const Column(
                                children: [
                                  Text(
                                    "Followings",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFEF6969),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "4000",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage()));
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFEF6969),
                                    ),
                                    child: const Center(
                                        child: Text(
                                      'Log out ',
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white, fontSize: 20),
                                    )),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
