import 'package:flutter/material.dart';

class HotTeas extends StatelessWidget {
  const HotTeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.amber,
          child: Text(
            'Hot Teas',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
