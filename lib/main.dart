import 'package:dtc_application/Faqandabout.dart';
import 'package:dtc_application/Homepage.dart';
import 'package:dtc_application/navclass.dart';
import 'package:dtc_application/profile.dart';
import 'package:flutter/material.dart';

import 'blogs.dart';
import 'connectpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'navclass',
      routes: {
        'homepage': (context) => Homepage(),
        'faq': (context) => Faqandabout(),
        'blogs': (context) => BlogsPage(),
        'connectpage': (context) => ConnectPage(),
        'navclass': (context) => navclass(),
        'profile':(context)=>profile()
      },
    );
  }
}
