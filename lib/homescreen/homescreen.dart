import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';
import 'package:workout_ui/customwidgets/textfield.dart';
import 'profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void register() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => profilescreen(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Hey there',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Create an account',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 400,
            width: 300,
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                const TF(assetpath: 'ui/profile.png', fieldtext: 'First name'),
                const TF(assetpath: 'ui/profile.png', fieldtext: 'Last name'),
                const TF(assetpath: 'ui/email.png', fieldtext: 'Email'),
                const TF(
                  assetpath: 'ui/Lock.png',
                  fieldtext: 'Password',
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.check_box_outline_blank),
                    ),
                    const Text(
                      'By Continuing you accept our',
                      style: TextStyle(fontSize: 10),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Privacy policy',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    const Text('and'),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'terms of use',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: () {
              register();
            },
            child: Glow(buttontext: 'Register'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 270,
            child: Image.asset('ui/or.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 50, width: 50, child: Image.asset('ui/google.png')),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                  height: 50, width: 50, child: Image.asset('ui/facebook.png')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already have an account?'),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Login',
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
