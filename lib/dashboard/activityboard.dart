import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';

class activityb extends StatelessWidget {
  const activityb({super.key});

  @override
  Widget build(BuildContext context) {
    String username = 'Blank user';
    String userworkout = 'Lose a fat programme';
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),

          ///the app bar / header
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              const SizedBox(
                width: 70,
              ),
              const Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                width: 100,
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('ui/details.png'),
              ),
            ],
          ),

          //this is where the user info is dislpayed
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                color: Colors.green,
              ),
              Column(
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    userworkout,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Glow(buttontext: 'Edit')
            ],
          ),
        ],
      ),
    );
  }
}
