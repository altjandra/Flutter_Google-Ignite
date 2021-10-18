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
              alignment :Alignment.center,
        height: MediaQuery.of(context).size.height,

            decoration: BoxDecoration(

            image: DecorationImage(
              image: AssetImage(
              "assets/pexels-fauxels-3184639.jpg"
              ),
              fit: BoxFit.cover
            ),
            ),
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                children: [
                  SizedBox(
                  height: 100,
                ),
                Text("Register ",
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
                Padding(padding: EdgeInsets.symmetric(horizontal:400),child:
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
                      return 'Password is Empty';
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
                Padding(padding: EdgeInsets.symmetric(horizontal:400),child:

                TextFormField(
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
                      return 'Email is Empty';
                    }
                    return null;
                  },
                  style: TextStyle(fontSize: 30, color: Colors.black),

                )),
                  const SizedBox(
                    height: 40,
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
                                  fontSize: 40,
                                  color: Colors.white),
                            ),
                          ),
                        ),
    const SizedBox(
    height: 40,
    ),
    //
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
                      child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 30,
                      )),
                      ),
                      ],
                    ),
                  ),
                ),
          ],
    )),
    ),
    );
                //



  }
}
