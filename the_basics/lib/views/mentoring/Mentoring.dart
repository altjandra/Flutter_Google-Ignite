import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_basics/widgets/coach_card/coach_card.dart';
import 'package:the_basics/widgets/coach_card/coach_card1.dart';
import 'package:the_basics/widgets/coach_card/coach_card3.dart';
import 'package:the_basics/widgets/coach_card/coach_card4.dart';
import 'package:the_basics/widgets/coach_card/coach_card5.dart';
import 'package:the_basics/widgets/coach_card/coach_card6.dart';
import 'package:the_basics/widgets/new_navigation/nav_bar.dart';
// import 'package:the_basics/widgets/coach_card/style_card.dart';



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
                NavigationBar(),
                SizedBox(
                  height: 30,
                ),
              Align(
              alignment: Alignment.center,
                    child: Text(
                    "Mentors",
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
          
              Container(child:
               Row(
                  children: [
                    Expanded(child: coachCard()),
                    const SizedBox(width: 12),
                    Expanded(child: coachCard2()),
                    const SizedBox(width: 12),
                    Expanded(child: coachCard3()),]

                )
               ),
                Container(child:
                Row(
                    children: [
                      Expanded(child: coachCard4()),
                      const SizedBox(width: 12),
                      Expanded(child: coachCard5()),
                      const SizedBox(width: 12),
                      Expanded(child: coachCard6()),]

                )
                ),

            ]

      )
    )

    )
    );
  }
}