import 'package:flutter/material.dart';
import 'package:weightstracker/theme/projectcolor.dart';

import 'my_text.dart';

class MyMessageBox extends StatelessWidget {
  final String title;
  final String subtitle;
  const MyMessageBox({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ProjectColor().grey,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      width: 350,
      height: 125,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            data: title,
            weight: FontWeight.bold,
            size: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          MyText(data: subtitle),
        ],
      ),
    );
  }
}
