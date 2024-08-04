import 'package:creditcard_mockups/Category/container_class.dart';
import 'package:flutter/material.dart';

class HotTeas extends StatelessWidget {
  const HotTeas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        ContainerClass(
            image: AssetImage('images/cake3.png'),
            title: 'Espresso',
            detail: '2% milk wet',
            price: 280,
            star: 4.3),
      ],
    );
  }
}
