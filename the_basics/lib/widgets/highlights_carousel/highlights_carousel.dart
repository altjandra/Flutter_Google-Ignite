import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HighlightsCarousel extends StatefulWidget {
  // const DestinationCarousel({required Key key}) : super(key: key);

  @override
  _HighlightsCarouselState createState() => _HighlightsCarouselState();
}

class _HighlightsCarouselState extends State<HighlightsCarousel> {

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'a00b9c20-b6b1-4fb9-9bb8-d69764322182_4x.png',
    'websiteC.png',
    'cdbefb104928081.5f6d97a055414.jpg',
    'c35b2be4b09afcc1d0fadf8ccf783cb4.png',
    'phone.jpeg',

    'website_bugs.png',
  ];

  final List<String> places = [
    'E-PAYMENT',
    'AFRICA',
    'BUDGET TRACKER',
    'SOCIAL SITE',
    'COIN',
    'BUG ENTHUSIASTS',
  ];

  List<Widget> generateImagesTiles() {
    return images.map((element)=>ClipRRect(
      child:Image.asset(element,
      fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(15.0),
    )).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical:80),
        child: Text('Trending Projects',
                style: TextStyle(
                      fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: 60),
                )
      ),
  
      Padding(
        padding: const EdgeInsets.only(bottom:160),
        child: Container(
        color: Colors.white,
        // padding: const EdgeInsets.only(top:150),
        child: Stack(
          children: [
            CarouselSlider(items: generateImagesTiles() , 
            options: CarouselOptions(
              enlargeCenterPage:true,
              autoPlay: true,
              aspectRatio: 18/8,
              onPageChanged: (index, other){
                setState(() {
                  _current = index;
                });
              }
            )),
            // AspectRatio(aspectRatio: 18/8,
            // child:Center(
            //     child: Text(
            //       places[_current],
            //       style: GoogleFonts.montserrat(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 50,
            //           letterSpacing: 2.0,
            //           color: Colors.white
            //       ),
            //     ),
            //   // child:Text(
            //   //   places[_current],
            //   //
            //   //   style: TextStyle(
            //   //     decoration: TextDecoration.none,
            //   //     color: Colors.white,
            //   //     fontSize: MediaQuery.of(context).size.width/15
            //   //   ),
            //   // )
            // )
            // )
          ]
        )
    ),
      )    
  ]
);
  }
}