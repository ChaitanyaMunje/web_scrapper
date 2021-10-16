import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class AnimatedBottomNavBar extends StatefulWidget {
  const AnimatedBottomNavBar({Key? key}) : super(key: key);

  @override
  _AnimatedBottomNavBarState createState() => _AnimatedBottomNavBarState();
}

class _AnimatedBottomNavBarState extends State<AnimatedBottomNavBar> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.blue);
  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Courses',
      style: optionStyle,
    ),
    Text(
      'Contact Info',
      style: optionStyle,
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Nav Bar')),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavyBar(
        items: [
          BottomNavyBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: Icon(Icons.bookmark),
              title: Text('Courses'),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: Icon(Icons.call),
              title: Text('Contact Us'),
              activeColor: Colors.blue),
        ],
        onItemSelected: onItemTapped,
        selectedIndex: selectedIndex,
        showElevation: true,
      ),
    );
  }
}
