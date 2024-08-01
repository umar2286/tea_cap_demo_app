import 'package:flutter/material.dart';

class HotCoffees extends StatelessWidget {
  const HotCoffees({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Text(
            'Hot Coffees',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
