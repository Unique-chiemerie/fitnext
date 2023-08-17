import 'package:flutter/material.dart';
import 'track.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void switchscreen() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const TracK(),
          ));
    }

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 1200,
            width: 1650,
            child: Image.asset(
              'ui/w.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              Center(
                child: Image.asset('ui/wtext.png'),
              ),
              const SizedBox(
                height: 250,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    switchscreen();
                  },
                  child: const Text('Get Started'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
