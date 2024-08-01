import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              ))
        ],
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 250.0),
        child: Drawer(
          width: 65,
          elevation: 5,
          backgroundColor: Colors.deepOrange,
          child: ListView(
            children: const [
              ListDrawer(title: '• Hot Teas'),
              ListDrawer(title: '• Ice Teas'),
              ListDrawer(title: '• Hot Coffees'),
              ListDrawer(title: '• Drinks'),
              ListDrawer(title: '• Bakery'),
              ListDrawer(title: '• Bakery'),
            ],
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
                  color: Colors.deepOrange),
            ),
            Text(
              "Muhammad Umar",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'exo',
                  fontSize: 20,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ListDrawer extends StatelessWidget {
  const ListDrawer({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: ListTile(
        title: RotatedBox(
          quarterTurns: 3,
          child: Text(
            title,
            style: const TextStyle(
                fontFamily: 'exo',
                fontWeight: FontWeight.w900,
                color: Colors.white54),
          ),
        ),
      ),
    );
  }
}
