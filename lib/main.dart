

import 'package:flutter/material.dart';
import 'package:quotes_app/homescreen.dart';
import 'package:quotes_app/screens/motivational.dart';


List<Color> color1 = [
  Colors.pink,
  Colors.black38,
  Colors.teal,
  Colors.lightBlue,
  Colors.green,
  Colors.orange,
  Colors.cyan,
  Colors.brown,
  Colors.purple,
  Colors.red,
];

List<Color> color2 = [
  Colors.pinkAccent,
  Colors.black45,
  Colors.tealAccent,
  Colors.lightBlueAccent,
  Colors.greenAccent,
  Colors.orangeAccent,
  Colors.cyanAccent,
  Colors.brown.shade600,
  Colors.purpleAccent,
  Colors.redAccent,
];

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Motivational(),
        'motivational' : (context) => Motivational(),
      },
    ),
  );
}