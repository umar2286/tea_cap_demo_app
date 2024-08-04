import 'package:flutter/material.dart';

class Bakery extends StatelessWidget {
  const Bakery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.purple,
          child: const Text(
            'Bakery',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
