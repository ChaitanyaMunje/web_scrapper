import 'package:flutter/material.dart';
import 'package:web_scrapper/dice_game.dart';
import 'package:web_scrapper/swipe_to_dismiss.dart';
import 'package:web_scrapper/swipe_to_dismiss_with_animation.dart';
import 'package:web_scrapper/web_scrapper.dart';

import 'animated_bottom_nav_bar.dart';
import 'animated_fab.dart';
import 'bottom_nav_bar.dart';
import 'floating_action_button_demo.dart';
import 'lottie_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Web Scrapper',
      debugShowCheckedModeBanner: false,
      home: LottieAnimation(),

    );
  }
}
