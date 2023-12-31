import 'package:flutter/material.dart';
import 'package:workout_ui/dashboard/activityboard.dart';
import 'package:workout_ui/dashboard/camera.dart';
import 'package:workout_ui/dashboard/homeboard.dart';
import 'package:workout_ui/dashboard/profileboard.dart';
import 'package:workout_ui/dashboard/searchboard.dart';

class BnB extends StatefulWidget {
  const BnB({super.key});

  @override
  State<BnB> createState() => _BnBState();
}

int currentscreen = 0;

final List<Widget> screenz = [
  const Dashboard(),
  const Activityb(),
  const searchb(),
  const camerab(),
  const profileb(),
];

class _BnBState extends State<BnB> {
  @override
  Widget build(BuildContext context) {
    //the list of the screens go here...

    return Scaffold(
      body: Stack(
        children: [
          screenz[currentscreen],
          Stack(
            children: [
              bottomnavbar(),
              //this is the stacked search bar button untop of the screen widgets
              Positioned(
                left: 130,
                bottom: 20,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('ui/sech.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomnavbar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 715,
        ),
        Center(
          child: Container(
            height: 70,
            width: 350,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 233, 231, 231),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                navbaitem('ui/homenav.png', 0),
                const SizedBox(
                  width: 5,
                ),
                navbaitem('ui/profile.png', 1),
                const SizedBox(
                  width: 30,
                ),
                navbaitem('ui/camera.png', 2),
                const SizedBox(
                  width: 5,
                ),
                navbaitem('ui/activitychart.png', 3),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Color activecolor = const Color.fromARGB(255, 243, 205, 250);

  Widget navbaitem(String imagepath, int index) {
    bool isActive = index == currentscreen;

    return InkWell(
      onTap: () {
        setState(() {
          currentscreen = index;
        });
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isActive ? activecolor : Colors.transparent),
        child: Image.asset(imagepath),
      ),
    );
  }
}
