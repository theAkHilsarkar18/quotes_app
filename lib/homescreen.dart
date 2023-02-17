import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'main.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  List statusTopic = [
    "Love",
    "Sad",
    "Motivational",
    "Inspiration",
    "Pray",
    "Happy",
    "Funny",
    "Birthday",
    "Attitude",
    "Angry",
  ];




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.all_inclusive,color: Color(0xff1E2022),size: 30),
          centerTitle: true,
          title: Text("Best Quotes",style: GoogleFonts.aBeeZee(color: Color(0xff1E2022),fontSize: 18,letterSpacing: 2,fontWeight: FontWeight.w500),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border,color: Color(0xff1E2022),size: 25),
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
       body: Column(
         children: [
           Container(
             height: 708,
             width: double.infinity,
             child: ListView.builder(itemBuilder: (context, index) => statusbox(color1[index],color2[index],statusTopic[index]),itemCount: statusTopic.length,physics: BouncingScrollPhysics(),),
           ),
         ],
       ),
       backgroundColor: Color(0xffF0F5F9),
      ),
    );
  }

  Widget statusbox(Color c1 , Color c2 , String topic)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
             c1,
              c2,
            ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$topic",style: GoogleFonts.aBeeZee(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2),),
            SizedBox(height: 10,),
            Icon(Icons.emoji_emotions_outlined,color: Colors.white,size: 30,),
          ],
        ),
      ),
    );
  }
}
