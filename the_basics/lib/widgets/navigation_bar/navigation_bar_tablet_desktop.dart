import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Career Guidance'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Messages'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Coaching'),
              SizedBox(
                width: 60,
              ),
              MaterialButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    onPressed: (){},
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white),
                    ),
                )
            ],
          )
        ],
      ),
    );
  }
}