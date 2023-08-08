import 'package:flutter/material.dart';
import 'welcoming/welcome.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: ThemeData(useMaterial3: true),
    ),
  );
}
