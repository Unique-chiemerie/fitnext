import 'package:flutter/material.dart';
import 'package:workout_ui/dashboard/homeboard.dart';

class BnB extends StatefulWidget {
  const BnB({super.key});

  @override
  State<BnB> createState() => _BnBState();
}

int currentscreen = 0;

class _BnBState extends State<BnB> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> screenz = [
      Dashboard(),
    ];
    return Scaffold(
      body: screenz[currentscreen],
    );
  }

  Widget bottomnavbar() {
    return Container(
      height: 70,
      width: 300,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navbaitem('ui/homenav.png', 1),
        ],
      ),
    );
  }

  Widget navbaitem(String imagepath, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          currentscreen = index;
        });
      },
      child: Container(
        height: 50,
        width: 50,
        child: Image.asset(imagepath),
      ),
    );
  }
}
