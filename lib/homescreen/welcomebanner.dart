import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';
import 'package:workout_ui/dashboard/home.dart';

class banner extends StatelessWidget {
  const banner({super.key});

  @override
  Widget build(BuildContext context) {
    void homes() {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const BnB();
        },
      ));
    }

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 400,
              width: 300,
              child: Image.asset('ui/mwm.png'),
            ),
          ),
          const Text(
            'Welcome Blank',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'You are all set now, Let\'s reach your \n'
            'goals together',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 120,
          ),
          InkWell(
              onTap: () {
                homes();
              },
              child: Glow(buttontext: 'Go To Home'))
        ],
      ),
    );
  }
}
