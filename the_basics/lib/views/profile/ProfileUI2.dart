import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:the_basics/widgets/community_projects/communityProjects2.dart';
import 'package:the_basics/widgets/community_projects/communityProjects2.dart';
import 'package:the_basics/widgets/community_projects/communityProjects3.dart';
import 'package:the_basics/widgets/community_projects_display/community_projects_display.dart';
import 'package:the_basics/widgets/new_navigation/nav_bar.dart';
import 'package:the_basics/widgets/profile_projects/profile_projects_display.dart';


class ProfileUI2 extends StatelessWidget {

  // final _formKey = GlobalKey<FormState>();
  // User user = User("", "");
  // String url = "http://localhost:8001/register";
  //
  //
  //
  // Future save() async {
  //   var res = await http.post(url,
  //       headers: {'Content-Type': 'application/json'},
  //       body: json.encode({'email': user.email, 'password': user.password}));
  //   print("SENT");
  //   print(res.body);
  //   if (res.body != null) {
  //     Navigator.pop(context);
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child:
        Column(
          children: [
            NavigationBar(),
            SizedBox(
              height: 20,
            ),


            Text(
              "PROFILE"
              ,style: TextStyle(
                fontSize: 25.0,
                color:Colors.black,
                fontWeight: FontWeight.bold
            ),

            ),

            SizedBox(
              height: 10,
            ),

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
                      // "https://images.app.goo.gl/RZkzhEZU68oXE3p59"
                       "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80"
                  ),
                  radius: 90.0,
                ),
              ),
            ),
            ),

            SizedBox(
              height: 60,
            ),



            Align(
            alignment: Alignment.center,
            child: Text(
            "Singapore,Singapore",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black)
            ),
            ),

            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                 "Aspiring UI/UX designer",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black)
                ),
              ),
            const SizedBox(height: 10),
            Text(
              "App Developer || Digital Marketer"
              ,style: TextStyle(
                fontSize: 18.0,
                color:Colors.black45,
                fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(
              height: 20,
            ),

            //
            // SizedBox(
            //   height: 10,
            // ),
             RaisedButton(
              onPressed: () {

              },
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
                  "Upload New Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),


            RaisedButton(
              onPressed: () {

              },
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
                  "Settings",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),



            SizedBox(
              height: 50,
            ),

            Text(
              "My dream is to build a mobile app that can change the world"
              ,style: TextStyle(
                fontSize: 15.0,
                color:Colors.black45,
                fontWeight: FontWeight.w300
            ),

            ),


            SizedBox(
              height:40,
            ),
            ProfileProjectsDisplay()
            
          ]
            
            )
        ),
        ),
      );
     }
  }