import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class coachCard4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Padding(
                padding: EdgeInsets.all(12),
                // Ink.image(
                //   image: AssetImage('assets/phone.jpeg'),
                //   height: 240,
                //   fit: BoxFit.cover,
                // ),
                child: CircleAvatar(
                  maxRadius: 90,
                  // AssetImage("")
                  backgroundImage: AssetImage("assets/pexels-mike-jones-9051688.jpg"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text("Macy Ng",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text("UI/UX Designer",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text("Always Smiling :)",
                    style: GoogleFonts.roboto(
                      // fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
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
                      "Send Coach Request",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}