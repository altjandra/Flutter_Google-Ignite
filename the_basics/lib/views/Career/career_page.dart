import 'package:the_basics/widgets/career_guidance/topBar.dart';
import 'package:the_basics/widgets/career_guidance/info_text.dart';
import 'package:the_basics/widgets/career_guidance/floating_quick_access_bar.dart';
import 'package:the_basics/widgets/career_guidance/featured_tiles.dart';
import 'package:the_basics/widgets/career_guidance/featured_heading.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/responsive.dart';
import 'package:the_basics/widgets/new_navigation/nav_bar.dart';

class CareerGuidance extends StatefulWidget {
  @override
  _CareerGuidanceState createState() => _CareerGuidanceState();
}

class _CareerGuidanceState extends State<CareerGuidance> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.blueGrey.shade900.withOpacity(_opacity),
              elevation: 0,
              title: Text(
                'EXPLORE',
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 20,  //font size here  initally 20
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      // drawer: ExploreDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            NavigationBar(),
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    height: screenSize.height * 0.45,
                    width: screenSize.width,
                    child: Image.asset(
                      'grad6.jpeg', //change image here
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    FloatingQuickAccessBar(screenSize: screenSize),
                    Container(
                      child: Column(
                        children: [
                          FeaturedHeading(
                            screenSize: screenSize,
                          ),
                          FeaturedTiles(screenSize: screenSize)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            // DestinationHeading(screenSize: screenSize),
            // DestinationCarousel(),
            // SizedBox(height: screenSize.height / 10),
            // BottomBar(),
          ],
        ),
      ),
    );
  }
}
