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
  workoutinfo(
    workoutimage: Image.asset('ui/knee.png'),
    endingicon: Image.asset('ui/nextarrow.png'),
    wcalotime: '200 calories burn | 30 minutes',
    workoutarea: 'Lowerbody workout',
    prgressba: Image.asset('ui/bar.png'),
  ),
  workoutinfo(
    workoutimage: Image.asset('ui/abs.png'),
    endingicon: Image.asset('ui/nextarrow.png'),
    wcalotime: '180 calories burn | 15 minutes',
    workoutarea: 'Abs',
    prgressba: Image.asset('ui/pBar.png'),
  ),
];
