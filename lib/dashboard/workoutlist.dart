import 'package:flutter/material.dart';

class workoutinfo {
  String workoutarea;
  Image workoutimage;
  Image endingicon;
  Image prgressba;
  String wcalotime;

  workoutinfo(
      {required this.workoutimage,
      required this.endingicon,
      required this.wcalotime,
      required this.workoutarea,
      required this.prgressba});
}

List<workoutinfo> workoutlist = [
  workoutinfo(
      workoutimage: Image.asset('ui/skipper.png'),
      endingicon: Image.asset('ui/nextarrow.png'),
      wcalotime: '180 Calories burn | 20 minutes',
      prgressba: Image.asset('ui/pBar.png'),
      workoutarea: 'Fullbody workout'),
];
