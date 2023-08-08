import 'package:flutter/material.dart';

class TF extends StatelessWidget {
  const TF({required this.assetpath, required this.fieldtext});
  final String assetpath;
  final String fieldtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 300,
      margin: const EdgeInsets.all(5),
      child: TextField(
        decoration: InputDecoration(
          hintText: fieldtext,
          hintStyle: const TextStyle(
              color: Color.fromARGB(168, 0, 0, 0), fontWeight: FontWeight.w300),
          fillColor: const Color.fromARGB(255, 188, 188, 188),
          prefixIcon: Image.asset(assetpath),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 188, 188, 188),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 188, 188, 188),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
