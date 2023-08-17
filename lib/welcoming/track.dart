import 'package:flutter/material.dart';
import 'burn.dart';

class TracK extends StatelessWidget {
  const TracK({super.key});

  @override
  Widget build(BuildContext context) {
    void burnscreen() {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) => const burn(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
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
              'ui/track.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 500,
              ),
              const Center(
                child: Text(
                  'Track your Goal',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  """
Don't worry if you have trouble determining
your goals,we can help you deterimine your
goals and track your goals
""",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 250,
                  ),
                  InkWell(
                    onTap: burnscreen,
                    child: Image.asset('ui/Button.png'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
