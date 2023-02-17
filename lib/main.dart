import 'package:flutter/material.dart';
import 'package:whatsapp/as.dart';
import 'package:whatsapp/details.dart';
import 'package:whatsapp/file.dart';
import 'package:whatsapp/free.dart';
import 'package:whatsapp/front_page.dart';
import 'package:whatsapp/home_page.dart';
import 'package:whatsapp/yy.dart';

import 'ChatList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.white,
        ),
        home: //Details()
            LoginPage()
        //As()
        //frontpage()
        //HomePage(),
        //Free()
        //FileAdd(),
        //ChatListmsg()
        //ChatListmsg()
        //Pdf()
        );
  }
}
