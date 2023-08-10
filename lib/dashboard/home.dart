import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //the list view that shows the basic beginning shit
      body: ListView(
        children: [
          Container(
            height: 120,
            width: 70,
            child: Row(
              children: [
                const Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(fontWeight: FontWeight.w100),
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Blank User',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: InkWell(
                      onTap: () {}, child: Image.asset('ui/bellicon.png')),
                ),
              ],
            ),
          ),
          //the card widget for the banner..
          Container(
            height: 200,
            width: 300,
            margin: const EdgeInsets.all(5),
            child: Stack(
              children: [
                Image.asset('ui/Banner.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'BMI(Body Mass Index)',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          '20.1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'You have a normal weight',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          width: 100,
                          height: 50,
                          child: InkWell(
                            onTap: () {},
                            child: Glow(buttontext: 'View more'),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          //the todays activity bar..
          Container(
            height: 70,
            width: 200,
            margin: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Image.asset('ui/todaybanner.png'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      'Today Target',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: Glow(buttontext: 'check'),
                    ),
                  ],
                ),
              ],
            ),
          ),
//activity status container sha
          const Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                'Activity Status',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 180,
            width: 250,
            margin: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Image.asset('ui/Status.png'),
                const Positioned.fill(
                    right: 170,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Heart Rate',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '78 BPM',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 208, 246),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ],
            ),
          ),
          //water intake container and all that
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 300,
                width: 150,
                margin: const EdgeInsets.all(5),
                child: Stack(children: [
                  Positioned.fill(
                    child: Image.asset(
                      'ui/Waterlevel.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned.fill(
                    left: 18,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //push down the texts
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 32,
                          child: Column(
                            children: [
                              Text(
                                'Water intake',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '4 Litres',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 246, 192, 255),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //use padding widget to align the text
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            'Real time updates',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Text(
                          '6am - 8am',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '600ml',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(242, 173, 254, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '9am - 11am',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '500ml',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(242, 173, 254, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '12pm - 2pm',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '1000ml',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(242, 173, 254, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '2am - 4am',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '700ml',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(242, 173, 254, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          '4pm - now',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '600ml',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(242, 173, 254, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              //the second card holding the sleep and calories
              Container(
                height: 300,
                width: 130,
                margin: const EdgeInsets.all(10),
                color: Colors.green,
                //write sleep and calories card
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('ui/wavy.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Sleep',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '8h 20m',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 245, 195, 254),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('ui/calocard.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Calories',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '760 kCal',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 245, 195, 254),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset('ui/roundchart.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
