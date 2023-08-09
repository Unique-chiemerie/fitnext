import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';
import 'package:workout_ui/customwidgets/textfield.dart';
import 'goal.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    void goal() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => GoalScreen(),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            child: Image.asset('ui/registerasset.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Let\'s  complete your profile',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'It will help us know more about you',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          //this is the textfield for registering , import text field from the custom widget
          Container(
            height: 300,
            width: 300,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 188, 188, 188),
                  ),
                  margin: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('ui/gender.png'),
                      ),
                      const Text(
                        'Select your gender',
                        style: TextStyle(
                          color: Color.fromARGB(168, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      DropdownButton<String>(
                        onChanged: (value) {},
                        items: <String>['Male', 'Female', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                const TF(assetpath: 'ui/date.png', fieldtext: 'Date of Birth'),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    const SizedBox(
                      width: 250,
                      child: TF(
                          assetpath: 'ui/scale.png', fieldtext: 'Your weight'),
                    ),
                    SizedBox(
                      height: 58,
                      width: 50,
                      child: Image.asset(
                        'ui/kg.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    const SizedBox(
                      width: 250,
                      child: TF(
                          assetpath: 'ui/swap.png', fieldtext: 'Your Height'),
                    ),
                    SizedBox(
                      height: 58,
                      width: 50,
                      child: Image.asset(
                        'ui/cm.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
              onTap: () {
                goal();
              },
              child: Glow(buttontext: 'Next >'))
        ],
      ),
    );
  }
}
