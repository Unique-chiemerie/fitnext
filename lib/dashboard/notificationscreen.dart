import 'package:flutter/material.dart';
import 'notificationslist.dart';

class notificationscreen extends StatelessWidget {
  const notificationscreen({super.key});

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
                width: 50,
              ),
              const Text(
                'Notifcations',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 60,
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('ui/details.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 500,
            width: 300,
            margin: const EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notimessage = notifications[index].message;
                final sub = notifications[index].time;
                final iconn = notifications[index].pic;

                return ListTile(
                  leading: SizedBox(
                    height: 40,
                    width: 40,
                    child: iconn,
                  ),
                  title: Text(
                    notimessage,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  subtitle: Text(sub),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_rounded),
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
