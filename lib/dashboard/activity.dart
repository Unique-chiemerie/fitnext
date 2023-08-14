import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';

class activityscreen extends StatelessWidget {
  const activityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                'Activity Tracker',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 40,
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('ui/details.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 250,
            height: 140,
            child: Stack(
              children: [
                Positioned.fill(child: Image.asset('ui/container.png')),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'Today Target',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('ui/plus.png'))
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          height: 90,
                          width: 100,
                          child: Image.asset('ui/waterbucket.png'),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          height: 90,
                          width: 100,
                          child: Image.asset('ui/footsteps.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              const Text(
                'Activity Progress',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: Glow(buttontext: 'Weekly'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
