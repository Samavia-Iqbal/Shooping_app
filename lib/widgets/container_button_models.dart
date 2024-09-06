import 'package:flutter/material.dart';

class ContainerButtonModels extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String? itext;

  const ContainerButtonModels(
      {super.key, this.bgColor, this.containerWidth, this.itext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Center(
        child: Text(
          itext!,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
