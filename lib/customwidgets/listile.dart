import 'package:flutter/material.dart';

class lista extends StatelessWidget {
  const lista({super.key, required this.imagepath, required this.topname});

  final String imagepath;
  final String topname;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset(imagepath),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            topname,
            style: const TextStyle(
                fontFamily: 'raleway',
                fontWeight: FontWeight.w300,
                fontSize: 20),
          ),
          const SizedBox(
            width: 60,
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
