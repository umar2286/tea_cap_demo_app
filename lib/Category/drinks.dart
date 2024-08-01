import 'package:flutter/material.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Text(
            'Drinks',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
