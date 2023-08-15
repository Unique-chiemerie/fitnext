import 'package:flutter/material.dart';
import 'package:workout_ui/customwidgets/glowbutton.dart';
import 'package:workout_ui/dashboard/activitylist.dart';

class activityscreen extends StatelessWidget {
  const activityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                'Activity Tracker',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 40,
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
          Container(
            width: 250,
            height: 140,
            child: Stack(
              children: [
                Positioned.fill(child: Image.asset('ui/container.png')),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          'Today Target',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('ui/plus.png'))
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          height: 90,
                          width: 100,
                          child: Image.asset('ui/waterbucket.png'),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          height: 90,
                          width: 100,
                          child: Image.asset('ui/footsteps.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              const Text(
                'Activity Progress',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: Glow(buttontext: 'Weekly'),
              ),
            ],
          ),
          //this is where the activity chart is
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsetsDirectional.all(10),
            child: Image.asset(
              'ui/barrz.png',
              fit: BoxFit.fill,
            ),
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'Latest Activity',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                'see more',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          Container(
            height: 200,
            width: 250,
            margin: const EdgeInsets.all(10),
            child: // we build the tiles for the activities here
                ListView.builder(
              itemCount: activitylist.length,
              itemBuilder: (context, index) {
                //we put it in a row and arrange a column for the header and subtitle
                final lead = activitylist[index].leading;
                final head = activitylist[index].heading;
                final sub = activitylist[index].subtitle;

                return Container(
                  height: 70,
                  width: 250,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: lead,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            head,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                          Text(
                            sub,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert_outlined),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
