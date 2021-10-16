import 'package:flutter/material.dart';

class SwipeToDismiss extends StatelessWidget {
  const SwipeToDismiss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Swipe To Dismiss'),
      ),
      body: const MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final List<String> listItems =
      List<String>.generate(80, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, int index) {
        return Dismissible(
            key: Key(listItems[index]),
            onDismissed: (direction) {
              listItems.removeAt(index);
              Scaffold.of(context).showSnackBar(
                  const SnackBar(content: Text('Item Deleted')));
            },
            child: Material(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListTile(
                  title: Text("GFG " + "${listItems[index]}"),
                ),
              ),
            ));
      },
    );
  }
}
