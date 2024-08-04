import 'package:flutter/material.dart';

class IceTeas extends StatelessWidget {
  const IceTeas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: const Text(
            'Ice Teas',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
