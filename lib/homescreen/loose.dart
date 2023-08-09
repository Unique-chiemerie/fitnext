import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';
import 'package:workout_ui/homescreen/welcomelogin.dart';

class LooseFat extends StatelessWidget {
  const LooseFat({super.key});

  @override
  Widget build(BuildContext context) {
    void welcomeb() {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) =>
                const welcomeS(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1, 0);
              const end = Offset.zero;
              var curvee = CurveTween(curve: Curves.easeInOut);
              var tween = Tween(begin: begin, end: end).chain(curvee);
              var offsetanimation = animation.drive(tween);
              return SlideTransition(position: offsetanimation, child: child);
            },
          ));
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
                    Image.asset('ui/run.png'),
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
                            child: Image.asset('ui/fattext.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(onTap: () {}, child: Glow(buttontext: 'confirm'))
            ],
          )
        ],
      ),
    );
  }
}
