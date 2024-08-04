import 'package:creditcard_mockups/Category/bakery.dart';
import 'package:creditcard_mockups/Category/container_class.dart';
import 'package:creditcard_mockups/Category/drinks.dart';
import 'package:creditcard_mockups/Category/hot_coffees.dart';
import 'package:creditcard_mockups/Category/hot_teas.dart';
import 'package:creditcard_mockups/Category/ice_teas.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _selectedDrawerIndex = 0;

  late TabController _tabController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastEaseInToSlowEaseOut))
      ..addListener(() {
        setState(() {});
      });
    _animationController.forward();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  final List<Widget> tabContents = [
    const HotTeas(),
    const IceTeas(),
    const HotCoffees(),
    const Drinks(),
    const Bakery(),
  ];

  static const List<Tab> tabs = [
    Tab(text: '• Hot Teas'),
    Tab(text: '• Ice Teas'),
    Tab(text: '• Hot Coffees'),
    Tab(text: '• Drinks'),
    Tab(text: '• Bakery'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: const Color.fromARGB(236, 200, 60, 17),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Color.fromARGB(236, 200, 60, 17),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Tea Cap',
          style:
              TextStyle(fontWeight: FontWeight.bold, fontFamily: 'playWrite'),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(236, 200, 60, 17),
            ),
          )
        ],
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 250.0),
        child: Drawer(
          width: 65,
          elevation: 5,
          backgroundColor: const Color.fromARGB(236, 200, 60, 17),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(60.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SingleChildScrollView(
              child: Column(
                children: tabs.asMap().entries.map((entry) {
                  return ListDrawer(
                    title: entry.value.text!,
                    isSelected: _selectedDrawerIndex == entry.key,
                    onTap: () {
                      setState(() {
                        _selectedDrawerIndex = entry.key;
                        _tabController.animateTo(entry.key);
                        Navigator.pop(context);
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome,',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'exo',
                fontSize: 16,
                color: Color.fromARGB(236, 200, 60, 17),
              ),
            ),
            const Text(
              "Muhammad Umar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'exo',
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 300,
              height: 400,
              child: TabBarView(
                  controller: _tabController,
                  children: tabContents.map((Widget tabCont) {
                    return tabCont;
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}

class ListDrawer extends StatelessWidget {
  const ListDrawer({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: ListTile(
        selected: isSelected,
        title: RotatedBox(
          quarterTurns: 3,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'exo',
              fontWeight: FontWeight.w900,
              color: isSelected ? Colors.white : Colors.white54,
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
