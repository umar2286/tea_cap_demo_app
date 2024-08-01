import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber[50],
        appBarTheme: AppBarTheme(color: Colors.amber[50]),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.deepOrange,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.deepOrange,
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
              color: Colors.deepOrange,
            ),
          )
        ],
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 250.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: Drawer(
            width: 65,
            elevation: 5,
            backgroundColor: Colors.deepOrange,
            child: ListView(
              children: [
                ListDrawer(
                  title: '• Hot Teas',
                  isSelected: _selectedDrawerIndex == 0,
                  onTap: () {
                    setState(() {
                      _selectedDrawerIndex = 0;
                    });
                  },
                ),
                ListDrawer(
                  title: '• Ice Teas',
                  isSelected: _selectedDrawerIndex == 1,
                  onTap: () {
                    setState(() {
                      _selectedDrawerIndex = 1;
                    });
                  },
                ),
                ListDrawer(
                  title: '• Hot Coffees',
                  isSelected: _selectedDrawerIndex == 2,
                  onTap: () {
                    setState(() {
                      _selectedDrawerIndex = 2;
                    });
                  },
                ),
                ListDrawer(
                  title: '• Drinks',
                  isSelected: _selectedDrawerIndex == 3,
                  onTap: () {
                    setState(() {
                      _selectedDrawerIndex = 3;
                    });
                  },
                ),
                ListDrawer(
                  title: '• Bakery',
                  isSelected: _selectedDrawerIndex == 4,
                  onTap: () {
                    setState(() {
                      _selectedDrawerIndex = 4;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 30.0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome,',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontFamily: 'exo',
                fontSize: 16,
                color: Colors.deepOrange,
              ),
            ),
            Text(
              "Muhammad Umar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'exo',
                fontSize: 20,
                color: Colors.black,
              ),
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
        // selectedTileColor: Colors.white24,
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
