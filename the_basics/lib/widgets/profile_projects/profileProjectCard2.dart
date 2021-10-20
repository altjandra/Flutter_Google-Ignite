import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class profileProjectCard2  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    image: AssetImage('assets/final.jpeg'),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Align(alignment: Alignment.centerLeft, child: Text(
                "UI/UX Design Mobile"
                ,style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.normal
            ),),),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                  children: [
                  // Icon(Icons.bookmark_border_outlined),
                  // const SizedBox(width: 12),
                  Icon(Icons.message_outlined),
                  const SizedBox(width: 12),
                  Icon(Icons.double_arrow_rounded),
                  const SizedBox(width: 12)],
                  ),
                ],),
              ),
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0)
                ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 18.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80"
                      ),
                      radius: 30.0,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [  
                    Container(
                      child: Text("Samuel Goh", style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline))), 
                    Container(
                      child: Text("Submitted 5 mins ago", style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic))),
                    ]
                  ),
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