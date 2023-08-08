import 'package:flutter/material.dart';
import 'eat.dart';

class burn extends StatelessWidget {
  const burn({super.key});

  @override
  Widget build(BuildContext context) {
    void eatscreen() {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => EatWell(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(
              1.0,
              0,
            );
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
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
            'ui/burn.png',
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
                'Get burn',
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
Let's keep burning to achieve your goals, it
only hurts temporarily, if you give up now 
you will be in pain forever 
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
                  onTap: eatscreen,
                  child: Image.asset('ui/Button2.png'),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
