import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/widgets/community_projects_display/community_projects_display.dart';

class ProfileUI2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child:
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "add you image URL here "
                  ),
                  fit: BoxFit.cover
                )
              ),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0,2.5),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80"
                  ),
                  radius: 60.0,
                ),
              ),
            ),
            ),

            SizedBox(
              height: 60,
            ),
            Text(
              "Rajat Palankar"
              ,style: TextStyle(
                fontSize: 25.0,
                color:Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Belgaum, India"
              ,style: TextStyle(
                fontSize: 18.0,
                color:Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "App Developer at XYZ Company"
              ,style: TextStyle(
                fontSize: 15.0,
                color:Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(
              height: 10,
            ),
             RaisedButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                decoration: ShapeDecoration(
                  color: Colors.blue,
                  // gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                  shape: RoundedRectangleBorder(),
                ),
                child: Text(
                  "Upload New Project",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "App Developer || Digital Marketer"
              ,style: TextStyle(
                fontSize: 18.0,
                color:Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            CommunityProjectsDisplay()
            
            
          ]
            // Card(
            //   margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Expanded(
            //           child: Column(
            //             children: [
            //               Text("Project",
            //                 style: TextStyle(
            //                     color: Colors.blueAccent,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w600
            //                 ),),
            //               SizedBox(
            //                 height: 7,
            //               ),
            //               Text("15",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w300
            //                 ),)
            //             ],
            //           ),
            //         ),
            //         Expanded(
            //           child:
            //           Column(
            //             children: [
            //               Text("Followers",
            //                 style: TextStyle(
            //                     color: Colors.blueAccent,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w600
            //                 ),),
            //               SizedBox(
            //                 height: 7,
            //               ),
            //               Text("2000",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 22.0,
            //                     fontWeight: FontWeight.w300
            //                 ),)
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 50,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     RaisedButton(
            //       onPressed: (){

            //       },
            //       shape:  RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(80.0),
            //       ),
            //       child: Ink(
            //         decoration: BoxDecoration(
            //           gradient: LinearGradient(
            //               begin: Alignment.centerLeft,
            //               end: Alignment.centerRight,
            //               colors: [Colors.pink,Colors.redAccent]
            //           ),
            //           borderRadius: BorderRadius.circular(30.0),

            //         ),
            //         child: Container(
            //           constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
            //           alignment: Alignment.center,
            //           child: Text(
            //             "Contact me",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 12.0,
            //                 letterSpacing: 2.0,
            //                 fontWeight: FontWeight.w300
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //     RaisedButton(
            //       onPressed: (){

            //       },
            //       shape:  RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(80.0),
            //       ),
            //       child: Ink(
            //         decoration: BoxDecoration(
            //           gradient: LinearGradient(
            //               begin: Alignment.centerLeft,
            //               end: Alignment.centerRight,
            //               colors: [Colors.pink,Colors.redAccent]
            //           ),
            //           borderRadius: BorderRadius.circular(80.0),

            //         ),
            //         child: Container(
            //           constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
            //           alignment: Alignment.center,
            //           child: Text(
            //             "Portfolio",
            //             style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 12.0,
            //                 letterSpacing: 2.0,
            //                 fontWeight: FontWeight.w300
            //             ),
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // )
            )
        ),
        ),
      );
     }
  }