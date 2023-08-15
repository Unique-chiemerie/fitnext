import 'package:flutter/material.dart';

class activitytile {
  Image leading;
  String heading;
  String subtitle;

  activitytile(
      {required this.heading, required this.leading, required this.subtitle});
}

List<activitytile> activitylist = [
  activitytile(
      heading: 'Drinking 300ml water',
      leading: Image.asset('ui/activi.png'),
      subtitle: 'About 3 minutes ago'),
  activitytile(
      heading: 'Eat snack (fitbar)',
      leading: Image.asset('ui/sippin.png'),
      subtitle: 'About 10 minutes ago'),
];
