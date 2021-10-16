import 'package:flutter/material.dart';
import 'package:the_basics/constants/app_colors.dart';

class CallToActionMobile extends StatelessWidget {
  final String title;
  const CallToActionMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Image(image: AssetImage('assets/landingPage.png')),
    );
    // return Container(
    //   height: 60,
    //   alignment: Alignment.center,
    //   child: Text(
    //     title,
    //     style: TextStyle(
    //       fontSize: 18,
    //       fontWeight: FontWeight.w800,
    //       color: Colors.white,
    //     ),
    //   ),
    //   decoration: BoxDecoration(
    //     color: primaryColor,
    //     borderRadius: BorderRadius.circular(5),
    //   ),
    // );
  }
}