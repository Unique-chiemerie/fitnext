import 'package:flutter/material.dart';

class banner extends StatelessWidget {
  const banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset('ui/mwm.png'),
            ),
          ),
        ],
      ),
    );
  }
}
