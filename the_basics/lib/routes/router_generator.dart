import 'package:flutter/cupertino.dart'; //for IOS app 
import 'package:flutter/material.dart'; //some essestial flutter library



import 'package:the_basics/views/mentoring/Mentoring.dart';


import 'package:the_basics/views/mentoring/Mentoring.dart';

import 'package:the_basics/login.dart';
import 'package:the_basics/routes/routes.dart'; 
import 'package:the_basics/views/home/home_view.dart';
import 'package:the_basics/views/profile/ProfileUI2.dart';
// import 'package:the_basics/views/dashboard_main/db_main.dart';
import 'package:the_basics/views/Career/career_page.dart';
// import 'package:the_basics/views/home_view.dart';
// import 'package:the_basics//contact_page.dart';
// import 'package:the_basics/ui/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
        case routeCareerGuidance:
            return MaterialPageRoute(builder: (_) => CareerGuidance()); // this homeview() thing should be change to the various views later 
        break;
        case routeMessages:
            return MaterialPageRoute(builder: (_) => HomeView());
        break;
        case routeMentoring:
            return MaterialPageRoute(builder: (_) => Mentoring());
        break;
        // case routeSignUp:
        //     return MaterialPageRoute(builder: (_) => HomeView());
        // break;
      case routeLogin:
        return MaterialPageRoute(builder: (_) => Login());
        break;

      case routeProfile:
        return  MaterialPageRoute(builder: (_) => ProfileUI2());
        break;
    }
  }
}