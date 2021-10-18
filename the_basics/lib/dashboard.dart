import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);




  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override


  String url = "http://localhost:8081/api/users/getAll";

  Future<http.Response> get() async {
    return http.get(url);
    // var res = await http.get(url);
    //     // body: json.encode({'email': user.email, 'password': user.password}));
    // print("SENT");
    // print(res.body);
    // if (res.body != null) {
    //   Navigator.pop(context);
    // }
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              height: 750,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(233, 65, 82, 1),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, color: Colors.black, offset: Offset(1, 5))
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text("Dashboard",
                        style: GoogleFonts.pacifico(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white,
                        )),
                    SizedBox(
                      height: 30,
                    ),
                  ],

                ),
              ),
            ),
            Container(
            height: 90,
            width: 90,

                // child: FlatButton(
                // color: Color.fromRGBO(233, 65, 82, 1),
                //
                // onPressed: () {
                //

            )
          ],

        ),
      ),
    );
  }
}
