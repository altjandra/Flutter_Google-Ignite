import 'package:the_basics/app_view.dart';
import 'package:the_basics/routes/router_generator.dart';
import 'package:the_basics/routes/routes.dart';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false, //added
      title: 'CoLab',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),visualDensity: VisualDensity.adaptivePlatformDensity, //added
      ),
      // builder: (_, child) => AppView(
      //   child: child,
      // ),
      //
      // home: FutureBuilder(
      //     future: getUserData(),
      //     builder: (context, snapshot) {
      //       switch (snapshot.connectionState) {
      //         case ConnectionState.none:
      //         case ConnectionState.waiting:
      //           return CircularProgressIndicator();
      //         default:
      //           if (snapshot.hasError)
      //             return Text('Error: ${snapshot.error}');
      //           else if (snapshot.data.token == null)
      //             return Login();
      //           else
      //             UserPreferences().removeUser();
      //           return Welcome(user: snapshot.data);
      //       }
      //     }),

      initialRoute: routeLogin,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,

    );
  }
}
