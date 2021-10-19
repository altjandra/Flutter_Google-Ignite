import 'package:flutter/material.dart';
import 'package:the_basics/widgets/community_projects/communityProjects.dart';
import 'package:the_basics/widgets/community_projects/communityProjects2.dart';
import 'package:the_basics/widgets/community_projects/communityProjects3.dart';
import 'package:the_basics/widgets/profile_projects/profile_projects.dart';

class ProfileProjectsDisplay extends StatefulWidget {
  @override
  _ProfileProjectsDisplayState createState() => _ProfileProjectsDisplayState();
}

class _ProfileProjectsDisplayState extends State<ProfileProjectsDisplay> {
  bool onClick1 = false;
  bool onClick2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
    [Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [SizedBox(
        width: 180,
        height: 30,
        child: RaisedButton(
          color: Colors.blue,
            child:
              Text("My Current Projects"),
            textColor: Colors.white,
            shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.blue)),
            onPressed: () {
                setState(() {
                  onClick1 = true;
                });
              }),
      ),
          const SizedBox(width: 80),
          SizedBox(
            width: 180,
            height: 30,
            child: RaisedButton(
              color: Colors.blue,
            child:
              Text("Collaboration"),
            textColor: Colors.white,
            shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.blue)),
            onPressed: () {
                setState(() {
                  onClick1 = false;
                  onClick2 = true;  
                });
              }),
          )
          ]
        ),
      SizedBox(
        height: 60,
      ),
    Container(child:
          onClick1 ? Row(
                  children: [
                    const SizedBox(width: 12),
                    Expanded(child: communityProjectCard2()),
                    const SizedBox(width: 12),
                    Expanded(child:  communityProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child:  communityProjectCard3()),]
                ): Row(
                  children: [
                    const SizedBox(width: 12),
                    Expanded(child:  communityProjectCard2()),
                    const SizedBox(width: 12),
                    Expanded(child:  communityProjectCard()),
                    const SizedBox(width: 12),
                    ]
                ),
              )
        ],
      );
  }
}