import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SwipeWithAnimation extends StatelessWidget {
  const SwipeWithAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe to Dismiss with Animation'),
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
  final List<String> listItems =
      List<String>.generate(80, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = listItems[index];
        return Slidable(
          key: Key(item),
          actionPane: const SlidableDrawerActionPane(),
          child: buildListTile(item),
          actions: <Widget>[
            IconSlideAction(
              caption: 'Delete',
              color: Colors.red,
              icon: Icons.delete,
              onTap: () {
                setState(() {
                  listItems.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                      const SnackBar(content: Text('Item Deleted')));
                });
              },
            )
          ],
        );
      },
      itemCount: listItems.length,
    );
  }

  Widget buildListTile(String item) => Material(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListTile(
            title: Text(
              item,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      );
}
