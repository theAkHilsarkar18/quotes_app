import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes_app/homescreen.dart';
import 'package:quotes_app/screens/attitude.dart';
import 'package:quotes_app/screens/birthday.dart';
import 'package:quotes_app/screens/funny.dart';
import 'package:quotes_app/screens/love.dart';
import 'package:quotes_app/screens/motivational.dart';
import 'package:quotes_app/screens/pray.dart';
import 'package:quotes_app/screens/sad.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Spleshscreen(),
        'home': (context) => Homescreen(),
        'motivational': (context) => Motivational(),
        'love': (context) => Love(),
        'sad': (context) => SadQuotes(),
        'pray': (context) => Pray(),
        'att': (context) => Attitude(),
        'funny': (context) => Funny(),
        'birthday': (context) => Birthday(),
      },
    ),
  );
}

class Spleshscreen extends StatefulWidget {
  const Spleshscreen({Key? key}) : super(key: key);

  @override
  State<Spleshscreen> createState() => _SpleshscreenState();
}
class _SpleshscreenState extends State<Spleshscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, 'home');
      },
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff09203F),
                Color(0xff537895),
              ]
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BestQu",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 30,letterSpacing: 1)),
              SizedBox(width: 2,),
              Icon(Icons.all_inclusive,size: 50,color: Colors.white,),
              SizedBox(width: 2,),
              Text("tes",style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 30,letterSpacing: 1)),

            ],
          ),
        ),
      ),
    );
  }
}

List<Color> color1 = [
  Color(0xffEE9CA7),
  Color(0xffD4145A),
  Color(0xff614385),
  Color(0xff662D8C),
  Color(0xff2E3192),
  Color(0xff009245),
  Color(0xff662D8C),
  Color(0xffFF512F),
  Color(0xff09203F),
  Color(0xffFF512F),
];

List<Color> color2 = [
  Color(0xffFFDDE1),
  Color(0xffFBB03B),
  Color(0xff516395),
  Color(0xffED1E79),
  Color(0xff1BFFFF),
  Color(0xffFCEE21),
  Color(0xffED1E79),
  Color(0xff1BFFFF),
  Color(0xff537895),
  Color(0xffDD2476),
];
