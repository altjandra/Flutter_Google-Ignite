import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_basics/views/home/home_view.dart';
import 'package:the_basics/views/mentoring/Mentoring.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: InkWell(
      //   onTap: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => const HomeView()));
      //   },
        child: Text(
          "CoLab",
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.black),
        ),
      // ),


      // height: 80,

    );


  }
}