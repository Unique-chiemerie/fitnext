import 'package:flutter/material.dart';

bool isSwitchvalue = false;

class switcher extends StatefulWidget {
  const switcher({super.key});

  @override
  State<switcher> createState() => _switcherState();
}

class _switcherState extends State<switcher> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        activeTrackColor: Colors.purple,
        value: isSwitchvalue,
        onChanged: (nevalue) {
          setState(() {
            isSwitchvalue = nevalue;
          });
        });
  }
}
