
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../snapbox.dart';


List LoveQuotes = [
  "assets/love/l6.jpg",
  "assets/love/l7.jpg",
  "assets/love/l8.jpg",
  "assets/love/l9.jpg",
  "assets/love/l10.jpg",
  "assets/love/l11.jpg",
];


class Love extends StatefulWidget {
  const Love({Key? key}) : super(key: key);

  @override
  State<Love> createState() => _LoveState();
}

class _LoveState extends State<Love> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F5F9),
        appBar: AppBar(
          elevation: 0,
          leading:
          Icon(Icons.all_inclusive, color: Color(0xff1E2022), size: 30),
          centerTitle: true,
          title: Text(
            "Best Quotes",
            style: GoogleFonts.aBeeZee(
                color: Color(0xff1E2022),
                fontSize: 18,
                letterSpacing: 2,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border,
                  color: Color(0xff1E2022), size: 25),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffC9D6DF),
                  Color(0xffF0F5F9),
                ],
              ),
            ),
          ),
        ),
        body: Center(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xffC9D6DF),
                    Color(0xffF0F5F9),
                  ]),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: 60,
                      width: 260,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text("Motivational Quotes",
                          style: GoogleFonts.aBeeZee(
                              color: Color(0xff1E2022),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                              fontSize: 17))),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder: (context, index, realIndex) {
                        return Snapbox(LoveQuotes[index]);
                      },
                      options: CarouselOptions(
                        height: 400,
                        animateToClosest: true,
                        autoPlayAnimationDuration: Duration(seconds: 1),
                        autoPlay: true,
                        scrollPhysics: BouncingScrollPhysics(),
                        viewportFraction: 0.8,
                        enableInfiniteScroll: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 260,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.menu, color: Color(0xff1E2022), size: 27),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.home, color: Color(0xff1E2022), size: 27),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  share();
                                });
                              },
                              child: Icon(Icons.share,
                                  color: Color(0xff1E2022), size: 27)),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

