import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';
import 'package:workout_ui/dashboard/activity.dart';
import 'package:workout_ui/dashboard/workoutlist.dart';

import 'notificationscreen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    void notification() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const notificationscreen(),
          ));
    }

    return Scaffold(
      //the list view that shows the basic beginning shit
      body: ListView(
        children: [
          SizedBox(
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
                      onTap: () {
                        notification();
                      },
                      child: Image.asset('ui/bellicon.png')),
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
                            child: const Glow(buttontext: 'View more'),
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
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Today Target',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
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
              SizedBox(
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
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const activityscreen(),
                        ),
                      );
                    },
                    child: Image.asset('ui/Status.png')),
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
                            height: 2,
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
                            height: 66,
                            width: 70,
                            child: Stack(
                              children: [
                                Image.asset('ui/roundchart.png'),
                                const Positioned.fill(
                                  left: 17,
                                  top: 17,
                                  child: Text(
                                    '230k cal\n'
                                    ' left',
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          //this is the workout progress thingy ...
          SizedBox(
            height: 700,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    const Text(
                      'Workout Progress',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    //this is the button that takes user to the workout screen
                    InkWell(
                      onTap: () {},
                      child: const SizedBox(
                        height: 70,
                        width: 120,
                        child: Stack(
                          children: [
                            Glow(buttontext: 'Weekly'),
                            Positioned(
                              bottom: 23,
                              left: 80,
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.asset('ui/Graph.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                //the workout list tile thingy
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Latest Workout',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            'see more',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //this is the listile that holds the workout info
                      SizedBox(
                        height: 350,
                        width: 400,
                        child: Expanded(
                          child: ListView.builder(
                            itemCount: workoutlist.length,
                            itemBuilder: (context, index) {
                              final header = workoutlist[index].workoutarea;
                              final subtitle = workoutlist[index].wcalotime;
                              final progress = workoutlist[index].prgressba;
                              final prefix = workoutlist[index].endingicon;
                              final leading = workoutlist[index].workoutimage;

//building the tiles below the Latest workout header
                              return Container(
                                height: 80,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: const []),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    //leading icon
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: leading,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    //the text and progress bar on the listtile..
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          header,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          subtitle,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color:
                                                Color.fromARGB(255, 82, 82, 82),
                                          ),
                                        ),
                                        //progress
                                        SizedBox(
                                            height: 20,
                                            width: 160,
                                            child: progress)
                                      ],
                                      //the column ends here
                                    ),
                                    //the trailing icon goes here:
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                        width: 40, height: 40, child: prefix),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
