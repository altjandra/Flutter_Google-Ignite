import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HighlightProjects extends StatelessWidget {
  const HighlightProjects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return Container(
          width: 600,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'HIGHLIGHTS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 0.6,
                      decoration: TextDecoration.underline,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
              ),
              // Row(children: [Text(
              //   'Trending',
              //   textAlign: TextAlign.left,
              //   style: TextStyle(
              //   fontWeight: FontWeight.w500,
              //   height: 0.6,
              //   color: Colors.blue ,
              //   fontStyle: FontStyle.italic,
              //   fontSize: 25),
              // ),
              // Text(
              //   'High Collaboration Demand',
              //   textAlign: TextAlign.right,
              //   style: TextStyle(
              //   fontWeight: FontWeight.w500,
              //   height: 0.6,
              //   color: Colors.blue ,
              //   fontStyle: FontStyle.italic,
              //   fontSize: 25),
              // ),],
              // )
            ],
          ),
        );
      },
    );
  }
}