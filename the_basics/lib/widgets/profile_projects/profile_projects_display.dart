import 'package:flutter/material.dart';  
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
            child:
              Text("My Current Projects"),
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
                    Expanded(child: profileProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child: profileProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child: profileProjectCard()),]
                ): Row(
                  children: [
                    const SizedBox(width: 12),
                    Expanded(child: profileProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child: profileProjectCard()),
                    const SizedBox(width: 12),
                    ]
                ),
              )
        ],
      );
  }
}