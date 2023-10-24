import 'package:dtc_application/Faqandabout.dart';
import 'package:dtc_application/Homepage.dart';
import 'package:dtc_application/blogs.dart';
import 'package:dtc_application/connectpage.dart';
import 'package:dtc_application/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navclass extends StatefulWidget {
  const navclass({super.key});

  @override
  State<navclass> createState() => _navclassState();
}

class _navclassState extends State<navclass> {
  int _selectedindex=0;


  final List<Widget> screens=[
    Homepage(),
    ConnectPage(),
    Faqandabout(),
    BlogsPage(),
    profile()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
         activeColor:Colors.deepPurpleAccent ,

        iconSize: MediaQuery.of(context).size.width * 0.07,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: 12,
        ),

        gap: 5,
        tabs: [
          GButton(icon: Icons.home_filled, text: "Home",iconColor: Colors.black),
          GButton(icon: Icons.event_available_sharp, text: "Events",iconColor: Colors.black),
          GButton(icon: Icons.info_outline_rounded, text: "About",iconColor: Colors.black,),
          GButton(icon: Icons.wrap_text_outlined, text: "Blog",iconColor: Colors.black),
          GButton(icon: Icons.person, text: "Profile",iconColor: Colors.black),
        ],
        selectedIndex: _selectedindex,
        onTabChange: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
      ),

      backgroundColor: Colors.transparent,
      body: screens[_selectedindex],

    );
  }
}
