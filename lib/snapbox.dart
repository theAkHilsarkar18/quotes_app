
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_share/whatsapp_share.dart';



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

Future<void> share() async {
  await WhatsappShare.share(
    text: "TheAkhilSarkar",
    linkUrl: 'https://flutter.dev/',
    phone: '9825486060',
  );
}