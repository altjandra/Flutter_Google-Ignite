import 'package:flutter/material.dart';

class coachCard extends StatelessWidget {
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
                child: CircleAvatar(
                  maxRadius: 90,
                  // AssetImage("")
                  backgroundImage: AssetImage(""),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text("name", 
                    style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              Container(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text("title"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text("description"),
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