import 'package:creditcard_mockups/Category/bakery.dart';
import 'package:creditcard_mockups/Category/drinks.dart';
import 'package:creditcard_mockups/Category/hot_coffees.dart';
import 'package:creditcard_mockups/Category/ice_teas.dart';
import 'package:creditcard_mockups/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber[50],
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 255, 248, 225)),
        useMaterial3: true,
      ),
      home: BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> items = [
    const Icon(Icons.card_giftcard, size: 30, color: Colors.white70),
    const Icon(Icons.category, size: 30, color: Colors.white70),
    const Icon(Icons.home, size: 30, color: Colors.white70),
    const Icon(Icons.heart_broken, size: 30, color: Colors.white70),
    const Icon(Icons.person, size: 30, color: Colors.white70),
  ];
  final List<Widget> screens = [
    const Bakery(),
    const Drinks(),
    const MyHomePage(),
    const HotCoffees(),
    const IceTeas()
  ];
  Color bgColor = const Color.fromARGB(255, 255, 248, 225);
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        // color: bgColor,
        child: screens[currentIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(255, 54, 23, 14),
        backgroundColor: bgColor,
        buttonBackgroundColor: Colors.deepOrange,
        animationCurve: Curves.bounceOut,
        animationDuration: const Duration(milliseconds: 900),
        index: 2,
        items: items,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
