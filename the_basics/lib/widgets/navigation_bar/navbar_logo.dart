import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 80,
      // width: 150,
      child: Text("Port.Collab", style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black, fontSize: 30)
      )
      // child: Image.asset('assets/logo.png'),
    );
  }
}