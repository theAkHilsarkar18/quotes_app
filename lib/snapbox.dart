
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget Snapbox(String imgPath)
{
  return Container(
    height: 300,
    width: 260,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black,width: 2),
      borderRadius: BorderRadius.circular(15),
    ),
    child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("$imgPath",fit: BoxFit.cover)),
  );
}