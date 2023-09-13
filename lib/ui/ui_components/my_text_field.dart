import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsecureText;
  const MyTextField({super.key, required this.controller, required this.hintText, required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
      ),
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: Color(0xff282828),
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: Colors.grey.shade200,
              )
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          )
      ),
    );
  }
}