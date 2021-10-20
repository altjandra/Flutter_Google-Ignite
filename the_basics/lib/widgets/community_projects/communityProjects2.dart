
import 'package:flutter/material.dart';

  class communityProjectCard2 extends StatefulWidget {

  @override
  _communityProjectCardState2 createState() => _communityProjectCardState2();


  }



  class _communityProjectCardState2  extends State<communityProjectCard2> {
  bool _success = true;
  bool _projectButton = false;

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
  image: AssetImage('assets/website2.jpeg'),
  height: 240,
  fit: BoxFit.cover,
  ),
  ],
  ),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
  child: Align(alignment: Alignment.centerLeft, child: Text(
  "Elegant Website"
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
  Image.asset('assets/website2.jpeg',
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
  "Elegant Website"
  ,style: TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.normal
  ),
  ),
  ),
  ),

  Padding(
  padding: const EdgeInsets.symmetric(vertical: 10.0),
  child: Text(
  "E-commerce website"
  ,style: TextStyle(
  fontSize: 13.0,
  color: Colors.grey
  ),
  ),
  ),
  const SizedBox(height: 20),

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

  const SizedBox(height: 15),

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

  const SizedBox(height: 15),

  Row(children: [
  RaisedButton(

  padding: EdgeInsets.zero,
  shape: RoundedRectangleBorder(),
  child: Container(
  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
  decoration: ShapeDecoration(
  color: _projectButton ? Color.fromRGBO(91,184,235,1) : Color.fromRGBO(0,116,225,1),
  // gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
  shape: RoundedRectangleBorder(),
  ),
  child: Text(
  _projectButton ?
  "Added to Projects" : "Work for Projects" ,
  style: TextStyle(color: Colors.white),
  ),
  ),
  onPressed: () {setState(() {
  _projectButton = true;

  });},
  ),
  const SizedBox(width: 12),
  RaisedButton(
  onPressed: () {},
  padding: EdgeInsets.zero,
  shape: RoundedRectangleBorder(),
  child: Container(
  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
  decoration: ShapeDecoration(
  color: Color.fromRGBO(0,116,225,1),
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

  Padding(
  padding: const EdgeInsets.symmetric( vertical: 10.0),
  child: Text(
  "34 others are working on this\n3 are looking for collaborators",
  style: TextStyle(
  fontSize: 10.0,
  color: Colors.grey
  ),
  ),
  ),

  Container(
  color: Colors.grey,
  height: 1,
  width: 380,
  ),

  const SizedBox(height: 10),

  Row(
  children: [
  Container(
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

  const SizedBox(height: 10),

  Container(
  color: Colors.grey,
  height: 1,
  width: 380,
  ),


  Row(
  children: [
  Container(
  // padding: EdgeInsets.only(left: 18.0),
  child: CircleAvatar(
  backgroundImage: AssetImage("anonymous-avatar-icon-25.jpg"),
  radius: 15.0,
  ),
  ),
  Padding(
  padding: const EdgeInsets.all(10.0),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget> [
  Container(
  child: Text("User", style: TextStyle(
  color: Colors.black,
  decoration: TextDecoration.underline))),
  Container(
  child: Text("comment comment comment comment comment", style: TextStyle(
  color: Colors.grey,
  fontStyle: FontStyle.italic))),
  ]
  ),
  ),
  ]
  ),

  const SizedBox(height: 5),

  Row(
  children: [
  Container(
  // padding: EdgeInsets.only(left: 18.0),
  child: CircleAvatar(
  backgroundImage: AssetImage("anonymous-avatar-icon-25.jpg"),
  radius: 15.0,
  ),
  ),
  Padding(
  padding: const EdgeInsets.all(10.0),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget> [
  Container(
  child: Text("User", style: TextStyle(
  color: Colors.black,
  decoration: TextDecoration.underline))),
  Container(
  child: Text("comment comment comment comment comment", style: TextStyle(
  color: Colors.grey,
  fontStyle: FontStyle.italic))),
  ]
  ),
  ),
  ]
  ),

  const SizedBox(height: 5),

  Row(
  children: [
  Container(
  // padding: EdgeInsets.only(left: 18.0),
  child: CircleAvatar(
  backgroundImage: AssetImage("anonymous-avatar-icon-25.jpg"),
  radius: 15.0,
  ),
  ),
  Padding(
  padding: const EdgeInsets.all(10.0),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget> [
  Container(
  child: Text("User", style: TextStyle(
  color: Colors.black,
  decoration: TextDecoration.underline))),
  Container(
  child: Text("comment comment comment comment comment", style: TextStyle(
  color: Colors.grey,
  fontStyle: FontStyle.italic))),
  ]
  ),
  ),
  ]
  ),

  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Container(
  margin: const EdgeInsets.all(15.0),
  padding: const EdgeInsets.all(3.0),
  decoration: BoxDecoration(
  border: Border.all(color: Colors.blueAccent)
  ),
  child: Text('Type a comment...'),
  ),


  RaisedButton(
  onPressed: () {},
  padding: EdgeInsets.zero,
  shape: RoundedRectangleBorder(),
  child: Container(
  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
  decoration: ShapeDecoration(
  color: Color.fromRGBO(0,116,225,1),
  // gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
  shape: RoundedRectangleBorder(),
  ),
  child: Text(
  "Send",
  style: TextStyle(color: Colors.white),
  ),
  ),
  ),

  ],
  )



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



