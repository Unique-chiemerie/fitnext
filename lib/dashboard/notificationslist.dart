import 'package:flutter/material.dart';

class notif {
  Image pic;
  String message;
  String time;

  notif({required this.message, required this.pic, required this.time});
}

List<notif> notifications = [
  notif(
      message: 'Hey it\'s time for lunch',
      pic: Image.asset('ui/pie.png'),
      time: 'About 1 minute ago'),
  notif(
      message: 'Don\'t miss your lower body workout ',
      pic: Image.asset('ui/workout.png'),
      time: 'About 3 hours ago'),
  notif(
      message: 'Hey let\'s add some meals to your diet',
      pic: Image.asset('ui/pancakes.png'),
      time: 'About 3 hours ago'),
  notif(
      message: 'Congratulations you finished your abs workout',
      pic: Image.asset('ui/crunch.png'),
      time: 'About 29 May'),
  notif(
      message: 'Hey it\'s time for lunch',
      pic: Image.asset('ui/pie.png'),
      time: '8 April'),
  notif(
      message: 'Oops you missed your lowerbody',
      pic: Image.asset('ui/workout.png'),
      time: '3 April'),
];
