import 'package:flutter/material.dart';
import 'package:shopping_app/cart/cart_screen.dart';
import 'package:shopping_app/widgets/container_button_models.dart';

class ProductsDetailsPopup extends StatelessWidget {
  final iStyle = const TextStyle(
      color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 18);
  List<Color> clrs = [
    Colors.pinkAccent,
    Colors.blue,
    Colors.red,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: iStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Color",
                            style: iStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Total",
                            style: iStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'S',
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                'M',
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                'L',
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                'XL',
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            for (var i = 0; i < 4; i++)
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                    color: clrs[i],
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                          ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '-',
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                '1',
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                '+',
                                style: iStyle,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: iStyle,
                      ),
                      const Text(
                        "40PKR",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFEF6969),
                        ),
                      )
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
                              builder: (context) => CartScreen()));
                    },
                    child: ContainerButtonModels(
                      itext: "CheckOut",
                      bgColor: const Color(0xFFEF6969),
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModels(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: "Buy Now",
        bgColor: const Color(0xFFEF6969),
      ),
    );
  }
}
