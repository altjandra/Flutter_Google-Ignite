import 'package:flutter/cupertino.dart'; //for IOS app 
import 'package:flutter/material.dart'; //some essestial flutter library 
import 'package:the_basics/routes/routes.dart'; 
import 'package:the_basics/views/home/home_view.dart';
// import 'package:the_basics/views/home_view.dart';
// import 'package:the_basics//contact_page.dart';
// import 'package:the_basics/ui/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
        case routeCareerGuidance:
            return MaterialPageRoute(builder: (_) => HomeView()); // this homeview() thing should be change to the various views later 
        break;
        case routeMessages:
            return MaterialPageRoute(builder: (_) => HomeView());
        break;
        case routeMentoring:
            return MaterialPageRoute(builder: (_) => HomeView()); 
        break;
        case routeSignUp:
            return MaterialPageRoute(builder: (_) => HomeView());
        break;
    }
  }
}