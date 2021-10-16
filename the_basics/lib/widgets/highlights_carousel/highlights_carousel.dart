import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DestinationCarousel extends StatefulWidget {
  // const DestinationCarousel({required Key key}) : super(key: key);

  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'asia.jpg',
    'africa.jpg',
    'europe.jpg',
    'south_america.jpg',
    'australia.jpg',
    'antarctica.jpg',
  ];

  final List<String> places = [
    'ASIA',
    'AFRICA',
    'EUROPE',
    'SOUTH AMERICA',
    'AUSTRALIA',
    'ANTARCTICA',
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
  
      Container(
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
          AspectRatio(aspectRatio: 18/8,
          child:Center(
            child:Text(
              places[_current],
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width/15
              ),
            )
          )
          )
        ]
      )
    )    
  ]
);
    // Container(
    //   color: Colors.grey,
    //   padding: const EdgeInsets.only(top:150),
    //   child: Stack(
    //     children: [
    //       CarouselSlider(items: generateImagesTiles() , 
    //       options: CarouselOptions(
    //         enlargeCenterPage:true,
    //         autoPlay: true,
    //         aspectRatio: 18/8,
    //         onPageChanged: (index, other){
    //           setState(() {
    //             _current = index;
    //           });
    //         }
    //       )),
    //       AspectRatio(aspectRatio: 18/8,
    //       child:Center(
    //         child:Text(
    //           places[_current],
    //           style: TextStyle(
    //             decoration: TextDecoration.none,
    //             color: Colors.white,
    //             fontSize: MediaQuery.of(context).size.width/15
    //           ),
    //         )
    //       )
    //       )
    //     ]
    //   )

    // );
  }
}