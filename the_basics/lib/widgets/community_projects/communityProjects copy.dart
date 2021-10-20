import 'package:flutter/material.dart';


class communityProjectCard extends StatefulWidget {

  @override
  _communityProjectCardState createState() => _communityProjectCardState();
}



class _communityProjectCardState  extends State<communityProjectCard> {
  bool _success = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  child: Align(alignment: Alignment.centerLeft, child: Text(
                  "Telegram Theme Design"
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
                    Icon(Icons.bookmark_border_outlined),
                    const SizedBox(width: 12),
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
        onTap: (){
              showGeneralDialog(
                  barrierLabel: 'label',
                  barrierDismissible: true,
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionDuration: Duration(milliseconds: 300),
                  context: context,
                  transitionBuilder: (context, anim1, anim2, child) {
                    return SlideTransition(
                      position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                          .animate(anim1),
                      child: child,
                    );
                  },
                  pageBuilder: (context, anim1, anim2) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 700,
                        width: 900,
                        // padding:
                        //     EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Material(
                          child: Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/c35b2be4b09afcc1d0fadf8ccf783cb4.png',
                                alignment: Alignment.center,
                                height: double.infinity,
                                width: 450,
                                fit: BoxFit.cover,
                                  
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  
                                  children: [
                                    Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  child: Align(alignment: Alignment.centerLeft, child: Text(
                                  "Telegram Theme Design"
                                  ,style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.normal
                                        ),
                                      ),
                                    ),
                                  ),

                                Padding(
                                  padding: const EdgeInsets.symmetric( vertical: 10.0),
                                  child: Text(
                                  "To improve the notifications system of Telegram"
                                  ,style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey
                                        ),
                                      ),
                                    ),
                                  
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

                                const SizedBox(height: 12),

                                Row(
                                  children: [
                                  Icon(Icons.bookmark_border_outlined),
                                  Text("567"),
                                  const SizedBox(width: 12),
                                  Icon(Icons.message_outlined),
                                  Text("30"),
                                  const SizedBox(width: 12),
                                  Icon(Icons.double_arrow_rounded),
                                  Text("25"),
                                  const SizedBox(width: 12)],
                                  ),

                                const SizedBox(height: 12),

                                Row(children: [
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
                                      "Work for Projects",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
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
                                      "Look for Collaborators",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                              ),
                          
                                ],
                                  ),
                                    ],
                                      ),

                                //  SizedBox.shrink(),
                                    Align(alignment: Alignment.topRight,
                                    child: IconButton(
                                        icon: Icon(Icons.cancel),
                                        onPressed: () {
                                          Navigator.pop(context);
                                          setState(() {
                                            _success = !_success;
                                          });
                                        }))

                            ],
                            // child: Column(
                            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //   children: [
                            //     Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceBetween,
                            //       children: [
                            //         SizedBox.shrink(),
                            //         IconButton(
                            //             icon: Icon(Icons.cancel),
                            //             onPressed: () {
                            //               Navigator.pop(context);
                            //               setState(() {
                            //                 _success = !_success;
                            //               });
                            //             })
                            //       ],
                            //     ),
                            //     Image.asset('assets/c35b2be4b09afcc1d0fadf8ccf783cb4.png',
                            //       height: 200,
                            //     ),
                            //     Text(
                            //       'Success' ,
                            //       style: TextStyle(
                            //         color: 
                            //             Color(0xff81cffc),
                                       
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 25,
                            //       ),
                            //     ),
                            //     Text(
                            //         'Your guitar is tuned and now you are ready to hit the stage and rock!',
                                     
                            //       textAlign: TextAlign.center,
                            //       style: TextStyle(
                            //         color: Colors.black54,
                            //         fontSize: 15,
                            //       ),
                            //     ),
                            //     Container(
                            //       height: 50,
                            //       width: 235,
                            //       decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(30),
                            //       ),
                            //       child: Material(
                            //         borderRadius: BorderRadius.circular(30),
                            //         color: 
                            //             Color(0xff81cffc),
                                      
                            //         child: MaterialButton(
                            //           onPressed: () {},
                            //           child: Row(
                            //             mainAxisAlignment:
                            //                 MainAxisAlignment.center,
                            //             children: [
                            //               Expanded(
                            //                   child: Text(
                            //                 'Let\'s Rock!',
                                               
                            //                 textAlign: TextAlign.center,
                            //                 style: TextStyle(
                            //                   fontSize: 20,
                            //                   color: Colors.white,
                            //                   fontWeight: FontWeight.bold,
                            //                 ),
                            //               ))
                            //             ],
                            //           ),
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    );
                    }
                  ),
                );
              }
            }
          
        

           
