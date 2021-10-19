import 'package:flutter/material.dart';  
import 'package:the_basics/widgets/community_projects/communityProjects.dart';

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
        width: 180,
        height: 30,
        child: RaisedButton(
            child:
              Text("Projects"),
            textColor: Colors.black,
            shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.blueGrey)),
            onPressed: () {
                setState(() {
                  onClick1 = true;
                });
              }),
      ),
          const SizedBox(width: 10),
          SizedBox(
            width: 180,
            height: 30,
            child: RaisedButton(
            child:
              Text("Collaboration"),
            textColor: Colors.black,
            shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
            side: BorderSide(color: Colors.blueGrey)),
            onPressed: () {
                setState(() {
                  onClick1 = false;
                  onClick2 = true;  
                });
              }),
          )
          ]
        ),
    Container(child:
          onClick1 ? Row(
                  children: [
                    const SizedBox(width: 12),
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 12)]
                ): Row(
                  children: [
                    const SizedBox(width: 12),
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 12),
                    ]
                ),
              )
        ],
      );
  }
}