import 'dart:convert';

import 'user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  User user = User("", "");
  String url = "http://localhost:8001/register";



  Future save() async {
    var res = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': user.email, 'password': user.password}));
    print("SENT");
    print(res.body);
    if (res.body != null) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child:

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  // height: 750,
                  // width: MediaQuery.of(context).size.width / 2,
                  // decoration: BoxDecoration(
                  //   color: Colors.blue,
                  //   boxShadow: [
                  //     BoxShadow(
                  //         blurRadius: 10,
                  //         color: Colors.black,
                  //         offset: Offset(1, 5))
                  //   ],
                  //   borderRadius: BorderRadius.only(
                  //       bottomLeft: Radius.circular(80),
                  //       bottomRight: Radius.circular(20)),
                  // ),






                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Text("Register",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Colors.black,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Email",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black
                            ),
                          ),
                        ),


                    Padding(padding: EdgeInsets.symmetric(horizontal:150),child:
                        TextFormField(
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
                          decoration: InputDecoration(
                              errorStyle:
                              TextStyle(fontSize: 20, color: Colors.black),
                              // border: OutlineInputBorder(
                              //     borderSide: BorderSide.none)
                                ),
                        )),





                        Container(
                          height: 8,
                          color: Color.fromRGBO(255, 255, 255, 0.4),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Password",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),



                    Padding(padding: EdgeInsets.symmetric(horizontal:150),child:
                        TextFormField(
                          obscureText: true,
                          controller:
                          TextEditingController(text: user.password),
                          onChanged: (val) {
                            user.password = val;
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email is Empty';
                            }
                            return null;
                          },
                          style: TextStyle(fontSize: 30, color: Colors.black),
                          decoration: InputDecoration(
                              errorStyle:
                              TextStyle(fontSize: 20, color: Colors.black),
                              // border: OutlineInputBorder(
                              //     borderSide: BorderSide.none)
                            ),
                        )),
                        Container(
                          height: 8,
                          color: Color.fromRGBO(255, 255, 255, 0.4),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Already have Account ?",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 40,
                // ),
                //
                //



                Container(
                  height: 90,
                  width: 90,
                  child: FlatButton(
                      color: Color.fromRGBO(233, 65, 82, 1),

                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          save();
                        }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                       child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      )),
                ),


              ],

            ),


            ),
      ),
            );



  }
}
