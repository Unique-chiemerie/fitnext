import 'package:flutter/material.dart';

class profileb extends StatefulWidget {
  const profileb({super.key});

  @override
  State<profileb> createState() => _profilebState();
}

class _profilebState extends State<profileb> {
  @override
  Widget build(BuildContext context) {
    const head = 'Profile';
    return ListView(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const SizedBox(
              width: 50,
            ),
            const Text(head),
            const SizedBox(
              width: 50,
            ),
            Image.asset('ui/details.png'),
          ],
        ),
      ],
    );
  }
}
