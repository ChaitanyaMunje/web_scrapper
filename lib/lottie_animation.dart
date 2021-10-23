import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({Key? key}) : super(key: key);

  @override
  _LottieAnimationState createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Lottie Animation'),
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
  void showDialogBox(String courseName) {
    print(courseName + "Clicked");
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.grey,
            child: SizedBox(
              height: 200,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Lottie.asset('images/done.json',
                      height: 100, width: 100),
                  Text(
                    'You have enrolled in ' + courseName,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(color:Colors.transparent),
                        )
                      )
                    ),
                    onPressed: () {
                    Navigator.of(context).pop();
                  }, child: const Text('Close'),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white38,
                elevation: 10,
                child: Row(
                  children: [
                    Lottie.asset('images/clanguage.json',
                        height: 100, width: 100),
                    Container(
                      width: 90,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 60),
                        child: Text(
                          "C Course",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 60, 0, 4),
                      child: ElevatedButton(
                          onPressed: () {
                            showDialogBox("C Course");
                          },
                          child: const Text(
                            "Enroll Now",
                            style: TextStyle(backgroundColor: Colors.blue),
                          )),
                    ),
                    //TextButton(onPressed: onPressed, child: child)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white38,
                elevation: 10,
                child: Row(
                  children: [
                    Lottie.asset('images/java.json', height: 100, width: 100),
                    Container(
                      width: 90,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 60),
                        child: Text(
                          "Java Course",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 60, 0, 4),
                      child: ElevatedButton(
                          onPressed: () {
                            showDialogBox("Java Course");
                          },
                          child: const Text(
                            "Enroll Now",
                            style: TextStyle(backgroundColor: Colors.blue),
                          )),
                    ),
                    //TextButton(onPressed: onPressed, child: child)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white38,
                elevation: 10,
                child: Row(
                  children: [
                    Lottie.asset('images/javascript.json',
                        height: 100, width: 100),
                    Container(
                      width: 90,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 60),
                        child: Text(
                          "JavaScript Course",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 60, 0, 4),
                      child: ElevatedButton(
                          onPressed: () {
                            showDialogBox("JavaScript Course");
                          },
                          child: const Text(
                            "Enroll Now",
                            style: TextStyle(backgroundColor: Colors.blue),
                          )),
                    ),
                    //TextButton(onPressed: onPressed, child: child)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white38,
                elevation: 10,
                child: Row(
                  children: [
                    Lottie.asset('images/python.json', height: 100, width: 100),
                    Container(
                      width: 90,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 60),
                        child: Text(
                          "Python Course",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 60, 0, 4),
                      child: ElevatedButton(
                          onPressed: () {
                            showDialogBox("Python Course");
                          },
                          child: const Text(
                            "Enroll Now",
                            style: TextStyle(backgroundColor: Colors.blue),
                          )),
                    ),
                    //TextButton(onPressed: onPressed, child: child)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white38,
                elevation: 10,
                child: Row(
                  children: [
                    Lottie.asset('images/flutter.json',
                        height: 100, width: 100),
                    Container(
                      width: 90,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 60),
                        child: Text(
                          "Flutter Course",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 60, 0, 4),
                      child: ElevatedButton(
                          onPressed: () {
                            showDialogBox("Flutter");
                          },
                          child: const Text(
                            "Enroll Now",
                            style: TextStyle(backgroundColor: Colors.blue),
                          )),
                    ),
                    //TextButton(onPressed: onPressed, child: child)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
