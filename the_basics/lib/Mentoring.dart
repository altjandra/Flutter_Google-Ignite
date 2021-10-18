import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_basics/widgets/community_projects/communityProjects.dart';
import 'package:the_basics/widgets/community_projects_display/community_projects_display.dart';
import 'package:google_fonts/google_fonts.dart';
class Mentoring extends StatelessWidget {

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
              children:[
                SizedBox(
                  height: 30,
                ),
              Align(
              alignment: Alignment.center,
                    child: Text(
                    "Coaches",
                    style: GoogleFonts.montserrat(
                     fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Colors.black
                ),
                ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Each Coaching Journey Lasts For 3 Months",
                    style: GoogleFonts.montserrat(
                        // fontWeight: FontWeight,
                        fontSize: 25,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Container(child:
                // Row(
                //   children:[
                //     Container(
                //
                //       child: InkWell(
                //         onTap: () {},
                //         child: Text(
                //           "Bookmarked",
                //           style: GoogleFonts.roboto(
                //               fontWeight: FontWeight.bold,
                //               fontSize: 20,
                //               color: Colors.black),
                //         ),
                //       ),
                //     )
                //   ]
                //
                // )
                // ),
              Container(child:
               Row(
                  children: [
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child: communityProjectCard()),
                    const SizedBox(width: 12),
                    Expanded(child: communityProjectCard()),]

                )
               ),
                Container(child:
                Row(
                    children: [
                      Expanded(child: communityProjectCard()),
                      const SizedBox(width: 12),
                      Expanded(child: communityProjectCard()),
                      const SizedBox(width: 12),
                      Expanded(child: communityProjectCard()),]

                )
                ),
                Container(child:
                Row(
                    children: [
                      Expanded(child: communityProjectCard()),
                      const SizedBox(width: 12),
                      Expanded(child: communityProjectCard()),
                      const SizedBox(width: 12),
                      Expanded(child: communityProjectCard()),]

                )
                )
            ]

      )
    )

    )
    );
  }
}