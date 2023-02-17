

import 'package:flutter/material.dart';
import 'package:quotes_app/homescreen.dart';
import 'package:quotes_app/screens/love.dart';
import 'package:quotes_app/screens/motivational.dart';


void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Homescreen(),
        'motivational' : (context) => Motivational(),
        'love' : (context) => Love(),
      },
    ),
  );
}


List<Color> color2 = [
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),
 Color(0xffF0F5F9),

];

List<Color> color1 = [
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),
  Color(0xffC9D6DF),

];

