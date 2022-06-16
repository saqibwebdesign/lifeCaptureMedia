// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/api_calls/apicalls.dart';
import 'package:untitled/screens/Dashboard_screens/About.dart';
import 'package:untitled/screens/Dashboard_screens/settings.dart';
import 'package:untitled/screens/login/loginscreen.dart';
import 'package:untitled/screens/login/privacy_policy.dart';
import 'package:untitled/screens/login/update_Account.dart';
import 'package:untitled/screens/login/user-Affrement.dart';

class drawer_Screen extends StatefulWidget {
  const drawer_Screen({Key? key}) : super(key: key);

  @override
  _drawer_ScreenState createState() => _drawer_ScreenState();
}

class _drawer_ScreenState extends State<drawer_Screen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<api_calls>(context);
    String? _chosenValue;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xff316cbc),
                width: MediaQuery.of(context).size.width,
                height: 170.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                        //alignment: Alignment.centerLeft,
                        height: 65.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/logo.png'))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        '(Customer Name)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Update_Acount_Screen()),
                          );
                        },
                        child: Text(
                          'Dashboard',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Update_Acount_Screen()),
                          );
                        },
                        child: Text(
                          'My Account',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => setting_screen()),
                          );
                        },
                        child: Text(
                          'Settings',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => User_Aggrement_Screen()),
                          );
                        },
                        child: Text(
                          'User Agreement',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      height: 25.0,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Privacy_policy()),
                          );
                        },
                        child: Text(
                          'Privacy Policy',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      margin: EdgeInsets.all(0.0),
                      width: 240,
                      child: InkWell(
                          onTap: () {
                            Widget cancelButton = TextButton(
                              child: Text("Cancel"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            );
                            Widget continueButton = TextButton(
                              child: Text(
                                "Log Out",
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Login_Screen()),
                                  (route) => false,
                                );
                              },
                            );

                            // set up the AlertDialog
                            AlertDialog alert = AlertDialog(
                              title: Text("Log Out"),
                              content: Text("Do you want to Log Out?"),
                              actions: [
                                cancelButton,
                                // continueButton,
                                Container(
                                  height: 40,
                                  width: 110,
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    color: Color.fromRGBO(22, 97, 207, 10),
                                    child: Text(
                                      'Log Out',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: () {
                                      provider.logut(context);
                                      // GoogleSignIn().disconnect();
                                    },
                                  ),
                                ),
                              ],
                            );

                            // show the dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );
                          },
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      'Contact',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => About_screen()),
                          );
                        },
                        child: Text(
                          'About',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
