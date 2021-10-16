import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('FAB Demo'),
      ),
      body: FABDemo(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class FABDemo extends StatefulWidget {
  const FABDemo({Key? key}) : super(key: key);

  @override
  _FABDemoState createState() => _FABDemoState();
}

class _FABDemoState extends State<FABDemo> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Floating action button pressed this many times"),
          SizedBox(height: 20,),
          Text(
            "$i",
            textScaleFactor: 3,
          ),
          SizedBox(height: 70,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                i++;
              });
            },
            child: const Icon(Icons.add),
            backgroundColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
