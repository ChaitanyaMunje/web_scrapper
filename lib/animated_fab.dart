import 'package:flutter/material.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';

class AnimatedFab extends StatelessWidget {
  const AnimatedFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated FAB'),
      ),
      body: const MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => HawkFabMenu(
          icon: AnimatedIcons.arrow_menu,
          fabColor: Colors.blue,
          iconColor: Colors.white,
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Floating action button pressed this many times"),
              const SizedBox(
                height: 20,
              ),
              Text(
                "$i",
                textScaleFactor: 3,
              ),
              const SizedBox(
                height: 70,
              ),
            ],
          )),
          items: [
            HawkFabMenuItem(
                label: 'Add',
                ontap: () {
                  setState(() {
                    i++;
                  });
                },
                icon: Icon(Icons.add),
                color: Colors.blue,
                labelColor: Colors.blue,
                labelBackgroundColor: Colors.white),
            HawkFabMenuItem(
                label: 'Subtract',
                ontap: () {
                  setState(() {
                    i--;
                  });
                },
                icon: Icon(Icons.minimize),
                color: Colors.blue,
                labelColor: Colors.blue,
                labelBackgroundColor: Colors.white)
          ]),
    );
  }
}
