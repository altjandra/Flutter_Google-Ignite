import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:the_basics/views/home/home_view.dart';

import 'dashboard.dart';
import 'register.dart';
import 'user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  User user = User("", "");
  String url = "http://localhost:8082/Login";

  Future hideBar() async=>
      SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

  Future save() async {
    var res = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': user.email, 'password': user.password}));
    // print(res.body)
    // ;
    if(res.body!=null){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeView(),
          ));
    }

    // if (res.statusCode == 200) {
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => HomeView(),
    //       ));
    //   // If the server did return a 200 OK response,
    //   // then parse the JSON.
    //   // return Album.fromJson(jsonDecode(response.body));
    // }else{
    //   throw Exception('Incorrect username or password');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  // height: 750,
                  alignment :Alignment.center,
                  height: MediaQuery.of(context).size.height,

                  decoration: BoxDecoration(

                          image: DecorationImage(
                          image: AssetImage(
                                  "assets/pexels-fauxels-3184639.jpg"
                              ),
                          fit: BoxFit.cover
                      ),
                    // boxShadow: [
                    //   BoxShadow(
                    //       blurRadius: 10,
                    //       color: Colors.black,
                    //       offset: Offset(1, 5))
                    // ],
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(80),
                    //     bottomRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text("C o L a b",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 100,
                              color: Colors.white,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Email",
                            style: GoogleFonts.roboto(
                              // fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white
                            ),
                          ),
                        ),
                      Padding(padding: EdgeInsets.symmetric(horizontal:600),child:
                        TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Enter Email",
                            fillColor: Colors.white,
                            filled:true,
                            border: new OutlineInputBorder(

                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(
                                color:Colors.white
                              ),

                            ),
                          ),
                          // alignment:Alignment.center,
                          controller: TextEditingController(text: user.email),
                          onChanged: (val) {
                            user.email = val;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email is Empty';
                            }
                            return null;
                          },
                          style: TextStyle(fontSize: 30, color: Colors.black),
                          // decoration: InputDecoration(
                          //     errorStyle: TextStyle(fontSize: 20, color: Colors.white)
                          //     // border: OutlineInputBorder(
                          //     //     borderSide: BorderSide.none)
                          //   ),
                        )),
                        // Container(
                        //   height: 8,
                        //   color: Color.fromRGBO(255, 255, 255, 0.4),
                        // ),
                        const SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Password",
                            style: GoogleFonts.roboto(
                              // fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      Padding(padding: EdgeInsets.symmetric(horizontal:600),child:

                        TextFormField(
                            obscureText:true,
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                              fillColor: Colors.white,
                              filled:true,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(
                                    color:Colors.white
                                ),
                              ),
                            ),

                          controller:
                          TextEditingController(text: user.password),
                          onChanged: (val) {
                            user.password = val;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Password is Empty';
                            }
                            return null;
                          },
                          style: TextStyle(fontSize: 30, color: Colors.black),
                          // decoration: const InputDecoration(
                          //     errorStyle:
                          //     TextStyle(fontSize: 20, color: Colors.white),
                          //     // border: OutlineInputBorder(
                          //     //     borderSide: BorderSide.none)
                          //       ),
                        )),
                        // Container(
                        //   height: 8,
                        //   color: Color.fromRGBO(255, 255, 255, 0.4),
                        // ),
                        const SizedBox(
                          height: 60,
                        ),

                        Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text(
                              "Dont have Account ?",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          height: 90,
                          width: 90,
                          child: FlatButton(
                              color: Colors.white,
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  save();
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 30,
                              )),
                        )
                      ],
                    ),
                  ),
                ),


              ],
            )),
      ),
    );
  }
}
