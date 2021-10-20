import 'package:the_basics/responsive.dart';
import 'package:flutter/material.dart';

class FeaturedHeading extends StatelessWidget {
  FeaturedHeading({ //removed const
    // Key? key,
    this.screenSize, //removed required
  }); // : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(),
                Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Unique wildlife tours & destinations',
                  textAlign: TextAlign.end,
                ),
                SizedBox(height: 10),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Building a Portfolio - Starts Here!',
                  style: TextStyle(
                    fontSize: 50, //was 40
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                Expanded(
                  child: Text(
                    "We're Here To Guide You",
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
    );
  }
}
