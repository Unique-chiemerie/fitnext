import 'package:flutter/material.dart';

class CarD extends StatelessWidget {
  const CarD({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 7,
            color: Color.fromARGB(255, 236, 235, 235),
            spreadRadius: 2,
          ),
        ],
      ),
      child: child,
    );
  }
}
