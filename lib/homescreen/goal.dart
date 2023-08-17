import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';
import 'package:workout_ui/homescreen/skip.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void skip() {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => const SkiP(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1, 0);
            const end = Offset.zero;

            final tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: Curves.easeInOut),
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
      body: ListView(
        children: [
          Column(
            children: [
              const Text(
                'What is your goal?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("""it helps us choose a best
    programme for you
"""),
              SizedBox(
                child: Stack(
                  children: [
                    Image.asset('ui/goals.png'),
                    Column(
                      children: [
                        const SizedBox(
                          height: 300,
                        ),
                        Center(
                          child: Container(
                            height: 290,
                            width: 290,
                            margin: const EdgeInsets.all(10),
                            child: Image.asset('ui/text.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                  onTap: () {
                    skip();
                  },
                  child: const Glow(buttontext: 'Confirm'))
            ],
          )
        ],
      ),
    );
  }
}
