import 'package:flutter/material.dart';
import 'package:shopping_app/product/product_screen.dart';

import '../category/category.dart';

class HomeScreen extends StatelessWidget {
  List<String> tabs = ["All", "Category", "Top", "Recommended"];
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

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12.withOpacity(0.05),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0xFFEF6969),
                              ),
                              border: InputBorder.none,
                              label: Text(
                                'Find your product',
                                style: TextStyle(),
                              )),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.notifications,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFF0DD),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/hi.jpeg',
                            ),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
              SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: tabs == index
                              ? Colors.blue[200]
                              : Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                      AssetImage(categories[index].image),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              categories[index].title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 180,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: imageList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 320,
                            margin: const EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 180,
                                  width: 180,
                                  child: Stack(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductScreen()));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            imageList[index],
                                            fit: BoxFit.cover,
                                            height: 180,
                                            width: 180,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.favorite,
                                                color: Color(0xFFEF6969),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          productTitles[index],
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const SizedBox(
                                          width: 120,
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the "
                                            "printing and typesetting industry."
                                            " Lorem Ipsum has been the industry's standard"
                                            " dummy text ever since the 1500s, ",
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 22,
                                            ),
                                            Text('(' + reviews[index] + ')'),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              prices[index],
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFFEF6969),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Newest Products',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 220,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductScreen()));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        imageList[index],
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xFFEF6969),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              productTitles[index],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                Text('(' + reviews[index] + ')'),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  prices[index],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFEF6969),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: productTitles.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  )
                ],
              ),
            )
          ),
        ));
  }
}
