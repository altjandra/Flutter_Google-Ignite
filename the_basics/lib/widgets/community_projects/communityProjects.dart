import 'package:flutter/material.dart';


class communityProjectCard  extends StatelessWidget {
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
                    image: AssetImage('assets/c35b2be4b09afcc1d0fadf8ccf783cb4.png'),
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
            //   const Divider(
            // height: 10,
            // thickness: 3,
            // indent: 20,
            // endIndent: 20,
            //   ),
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0)
                // child: Text(
                //   'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
                //   style: TextStyle(fontSize: 16),
                ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80"
                      ),
                      radius: 30.0,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                
              // ),
              // ButtonBar(
              //   alignment: MainAxisAlignment.start,
              //   children: [
              //     FlatButton(
              //       child: Text('Buy Cat'),
              //       onPressed: () {},
              //     ),
              //     FlatButton(
              //       child: Text('Buy Cat Food'),
              //       onPressed: () {},
              //     )
              //   ],
              // )
            ],
          ),
      ),
    );
  }
}


