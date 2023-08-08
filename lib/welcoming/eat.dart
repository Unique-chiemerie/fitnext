import 'package:flutter/material.dart';
import 'package:workout_ui/welcoming/sleep.dart';

class EatWell extends StatelessWidget {
  const EatWell({super.key});

  @override
  Widget build(BuildContext context) {
    void sleep() {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => SleeP(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );
            var offsetanimation = animation.drive(tween);
            return SlideTransition(
              position: offsetanimation,
              child: child,
            );
          },
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: 1200,
          width: 1980,
          child: Image.asset(
            'ui/eat.png',
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
                'Eat well',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                """
Let's Start a healthy lifestyle with us, we can 
determine your diet everyday, healthy
eating is fun

""",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 250,
                ),
                InkWell(
                  onTap: sleep,
                  child: Image.asset('ui/Button3.png'),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
