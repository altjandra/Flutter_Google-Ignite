import 'package:flutter/material.dart';  
import 'package:the_basics/widgets/community_projects/communityProjects.dart';
import 'package:the_basics/widgets/community_projects/communityProjects2.dart';
import 'package:the_basics/widgets/community_projects/communityProjects3.dart';

class CommunityProjectsDisplay extends StatefulWidget {
  @override
  _CommunityProjectsDisplayState createState() => _CommunityProjectsDisplayState();
}

class _CommunityProjectsDisplayState extends State<CommunityProjectsDisplay> {
  bool onClick1 = false;
  bool onClick2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: 
    [Padding(
        padding: const EdgeInsets.symmetric(vertical:80),
        child: Text('Are you looking for...',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: 60),
                )
      ),
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [SizedBox(
        width: 200,
        height: 40,
        child: RaisedButton(
          color:Colors.blue,
            child:
              Text("Projects",
                style: TextStyle(
                  fontSize: 20.0, // insert your font size here
                ),
              ),
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
          const SizedBox(width: 100),
          SizedBox(
            width: 200,
            height: 40,
            child: RaisedButton(
              color: Colors.blue,
            child:
              Text("Collaboration",
                style: TextStyle(
                fontSize: 20.0, // insert your font size here
              ),
              ),
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
                    const SizedBox(width: 15),
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 15),
                    Expanded(child: communityProjectCard2()),
                    const SizedBox(width: 15),
                    Expanded(child: communityProjectCard3()),
                    const SizedBox(width: 15),]
                ): Row(
                  children: [
                    const SizedBox(width: 15),
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 15),
                    Expanded(child: communityProjectCard2()),
                    const SizedBox(width: 15)]

                ),
              )
        ],
      );
  }
}