import 'package:flutter/material.dart';
import 'package:the_basics/views/profile/ProfileUI2.dart';

import 'navbar_item.dart';
import '../new_navigation/navbar_logo.dart';

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
                    onPressed:(){
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => ProfileUI2(),
                      //     ));

                    },
                    child: Text(
                      "Profile",
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