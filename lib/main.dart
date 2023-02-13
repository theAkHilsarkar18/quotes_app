

import 'package:flutter/material.dart';
import 'package:quotes_app/homescreen.dart';
import 'package:quotes_app/secondscreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Homescreen(),
        'second' : (context) => Secondscreen(),
      },
    ),
  );
}