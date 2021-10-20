import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_basics/routes/routes.dart';
import 'package:the_basics/views/home/home_view.dart';
import 'package:the_basics/widgets/new_navigation/nav_item.dart';

import 'navbar_logo.dart';

// class NavigationBarWeb extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100.0,
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           Text(
//             'Career Guidance',
//             style: TextStyle(fontSize: 20.0),
//           ),
//           SizedBox(width: 100.0),
//           Text(
//             'Messaging',
//             style: TextStyle(fontSize: 20.0),
//           ),
//           SizedBox(width: 100.0),
//           Text(
//             'Mentoring',
//             style: TextStyle(fontSize: 20.0),
//           ),
//           Text(
//             'Sign Up',
//             style: TextStyle(fontSize: 20.0),
//           ),
//         ],
//       ),
//     );
//   }
// }



// class NavigationBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100.0,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           NavigationItem(title: 'Career Guidance'),
//           NavigationItem(title: 'Messaging'),
//           NavigationItem(title: 'Mentoring'),
//           NavigationItem(title: 'SignUp')
//         ],
//       ),
//     );
//   }
// }


// class NavigationBar extends StatefulWidget {

//   @override
//   _NavigationBarState createState() => _NavigationBarState();

// }
// class _NavigationBarState extends State<NavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100.0,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         mainAxisSize: MainAxisSize.max,
//         children: [
//           NavigationItem(
//             title: 'Career Guidance',
//             routeName: routeCareerGuidance,
//           ),
//           NavigationItem(
//             title: 'Messages',
//             routeName: routeMessages,
//           ),
//           NavigationItem(
//             title: 'Mentoring',
//             routeName: routeMentoring,
//           ),
//         NavgationItem(
//             title: 'SignUp',
//             routeName: routeSignUp,
//           ),
//         ],
//       ),
//     );
//   }




class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  
  int index = 0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0, // to adjust the height of nav bar
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(width:60),
             Container(
            child: InkWell(
            onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
          },
            child: Text(
              "CoLab",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black),
            ),
          ),
             ),

          SizedBox(width:760),
          NavigationItem(
            selected: index == 0,
            title: 'Explore',
            routeName: routeHome,
            onHighlight: onHighlight,
          ),
          NavigationItem(
            selected: index == 0,
            title: 'Career Guidance',
            routeName: routeCareerGuidance,
            onHighlight: onHighlight,
          ),

          NavigationItem(
            selected: index == 2,
            title: 'Mentoring',
            routeName: routeMentoring,
            onHighlight: onHighlight,
          ),

          NavigationItem(
            selected: index == 1,
            title: 'Messages',
            routeName: routeMessages,
            onHighlight: onHighlight,
          ),

          NavigationItem(
            selected: index == 3,
            title: 'Profile',
            routeName: routeProfile,
            onHighlight: onHighlight,
          ),
        ],
      ),
    );
  }
  
  void onHighlight(String route) {
    switch (route) {
      case routeCareerGuidance:
        changeHighlight(0);
        break;
      case routeMessages:
        changeHighlight(1);
        break;
      case routeMentoring:
        changeHighlight(2);
        break;
      case routeProfile:
        changeHighlight(3);
        break;
    }
  }
  
  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}