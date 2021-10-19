import 'package:flutter/material.dart';


class profileProjectCard  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 200.0,
      // height: 300.0,
      child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      'Telegram theme design',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  MaterialButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      onPressed: (){},
                      child: Text(
                        "Illustrator",
                        style: TextStyle(color: Colors.white),
                      ),
                  ), 
                  Row(
                  children: [Icon(Icons.bookmark_border_outlined),
                  Icon(Icons.message_outlined),
                  Icon(Icons.share)],
                  ),
                ],),
              ),
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0)
                ),
              Row(
                children: [
                  Container(
                    alignment: Alignment(-0.9,1.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80"
                      ),
                      radius: 30.0,
                    ),
                  ),
                Column(children: <Widget> [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text("Samuel Goh", style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline)))), 
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text("Submitted 5 mins ago", style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic)))),
                  ]
                ),
                
                ]
              ),
              Padding(padding: EdgeInsets.all(16).copyWith(bottom: 0)),
              
            ],
          ),
        
      ),
    );
  }
}