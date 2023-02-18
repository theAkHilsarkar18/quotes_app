
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../snapbox.dart';

class SadQuotes extends StatefulWidget {
  const SadQuotes({Key? key}) : super(key: key);

  @override
  State<SadQuotes> createState() => _SadQuotesState();
}

List SadQuotesImg = [
  "assets/sad/s1.jpg",
  "assets/sad/s2.jpg",
  "assets/sad/s3.jpg",
  "assets/sad/s4.jpg",
  "assets/sad/s5.jpg",
  "assets/sad/s6.jpg",
  "assets/sad/s7.jpg",
  "assets/sad/s8.jpg",
];

class _SadQuotesState extends State<SadQuotes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F5F9),
        appBar: AppBar(
          elevation: 0,
          leading:
          Icon(Icons.all_inclusive, color:Colors.white, size: 30),
          centerTitle: true,
          title: Text(
            "Best Quotes",
            style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 2,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border,
                  color: Colors.white, size: 25),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff09203F),
                  Color(0xff537895),
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
                      child: Text("Sad Quotes",
                          style: GoogleFonts.aBeeZee(
                              color: Color(0xff1E2022),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                              fontSize: 17))),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: CarouselSlider.builder(
                      itemCount: 8,
                      itemBuilder: (context, index, realIndex) {
                        return Snapbox(SadQuotesImg[index]);
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
