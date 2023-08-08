import 'package:flutter/material.dart';

class Glow extends StatelessWidget {
  Glow({
    required this.buttontext,
  });
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 131, 179, 218),
            Color.fromARGB(255, 220, 179, 246)
          ],
        ),
      ),
      child: Center(
        child: Text(buttontext),
      ),
    );
  }
}
