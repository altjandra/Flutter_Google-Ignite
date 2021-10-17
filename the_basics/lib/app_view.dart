import 'package:flutter/material.dart';
import 'package:the_basics/widgets/new_navigation/nav_bar.dart';

class AppView extends StatelessWidget {
  
final Widget child;
  
const AppView({@required this.child});
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [NavigationBar(), Expanded(child: child)],
      ),
    );
  }
}