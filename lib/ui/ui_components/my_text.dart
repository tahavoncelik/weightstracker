import 'package:flutter/material.dart';

class MyText extends StatelessWidget{
  final String data;
  final double? size;
  final TextAlign? align;
  final TextDirection? direction;
  final FontWeight? weight;
  const MyText({super.key, required this.data, this.size, this.weight, this.align, this.direction});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      textDirection: direction,
      style: TextStyle(
      color: Colors.white,
        fontSize: size,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis,
    ),);
  }
}