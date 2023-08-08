import 'package:flutter/material.dart';
import 'package:workout_ui/homescreen/homescreen.dart';

class SleeP extends StatelessWidget {
  const SleeP({super.key});

  @override
  Widget build(BuildContext context) {
    void login() {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return HomeScreen();
        },
      ));
    }

    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: 1200,
          width: 1980,
          child: Image.asset(
            'ui/sleep.png',
            fit: BoxFit.fill,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 500,
            ),
            const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                width: 55,
              ),
              Text(
                """ 
 Improve sleep 
 Quality
                """,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ]),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                """
Improve the quality of your sleep with us,
good quality sleep can bring good mood
in the morning
""",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 270,
                ),
                InkWell(
                  onTap: login,
                  child: Image.asset('ui/Button4.png'),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
