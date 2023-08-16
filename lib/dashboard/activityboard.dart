import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/customcard.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';

class activityb extends StatelessWidget {
  const activityb({super.key});

  @override
  Widget build(BuildContext context) {
    String username = 'Blank user';
    String userworkout = 'Lose a fat programme';
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),

          ///the app bar / header
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              const SizedBox(
                width: 70,
              ),
              const Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                width: 100,
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('ui/details.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          //this is where the user info is dislpayed
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 30,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset('ui/sippin.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    userworkout,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: Glow(buttontext: 'Edit'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          //this is the metric info "age", "weight", " height"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 7,
                      color: Color.fromARGB(255, 236, 235, 235),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: //the metadata/metrics that goes into the container
                    const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '180cm',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromARGB(255, 157, 154, 246),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Height',
                      style: TextStyle(
                        fontFamily: 'raleway',
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 7,
                      color: Color.fromARGB(255, 236, 235, 235),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                //the weight metric goes here
                child: const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '65kg',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromARGB(255, 157, 154, 246),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'weight',
                      style: TextStyle(
                        fontFamily: 'raleway',
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 7,
                      color: Color.fromARGB(255, 236, 235, 235),
                      spreadRadius: 2,
                    ),
                  ],
                ),
                //the age metric goes here
                child: const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '19yo',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Color.fromARGB(255, 157, 154, 246),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Age',
                      style: TextStyle(
                        fontFamily: 'raleway',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          ///done with the metrics row now it's time
          ///for the activity which has got alot of icons , so to keep the ui clean we could build
          ///a new widget instead and just dey import am inside the screens to keep the codes clean ofc
          CarD(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Activity',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                color: Colors.red,
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('ui/pp.png'),
                    ),
                    const Text(
                      'Personal Data',
                      style: TextStyle(
                          fontFamily: 'raleway', fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
