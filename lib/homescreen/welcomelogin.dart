import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';
import 'package:workout_ui/customwidgets/textfield.dart';
import 'package:workout_ui/homescreen/welcomebanner.dart';

class welcomeS extends StatelessWidget {
  const welcomeS({super.key});

  @override
  Widget build(BuildContext context) {
    void bannerrr() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const banner(),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              'Hey there',
              style: TextStyle(fontWeight: FontWeight.w100, fontSize: 15),
            ),
          ),
          const SizedBox(),
          const Center(
            child: Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            height: 400,
            width: 270,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                const TF(assetpath: 'ui/email.png', fieldtext: 'Email'),
                const TF(assetpath: 'ui/Lock.png', fieldtext: 'Password'),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Stack(
              children: [
                const Center(
                  child: Glow(buttontext: ''),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: InkWell(
                    onTap: () {
                      bannerrr();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset('ui/exitdoor.png'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 270,
            child: Image.asset('ui/or.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: Image.asset('ui/google.png'),
              ),
              const SizedBox(
                width: 40,
              ),
              SizedBox(
                height: 70,
                width: 70,
                child: Image.asset('ui/facebook.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account yet?'),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.purple),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
