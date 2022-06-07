// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:untitled/cart/thank_you.dart';
import 'package:untitled/login/Dashboard_screens/About.dart';
import 'package:untitled/login/Dashboard_screens/settings.dart';
import 'package:untitled/login/loginscreen.dart';
import 'package:untitled/login/privacy_policy.dart';
import 'package:untitled/login/update_Account.dart';
import 'package:untitled/login/user-Affrement.dart';

class drawer_Screen extends StatefulWidget {
  const drawer_Screen({Key? key}) : super(key: key);

  @override
  _drawer_ScreenState createState() => _drawer_ScreenState();
}

class _drawer_ScreenState extends State<drawer_Screen> {
  @override
  Widget build(BuildContext context) {
    String? _chosenValue;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        // child: Container(
        //
        //    height: MediaQuery.of(context).size.height,
        //   child: Stack(
        //     overflow: Overflow.visible,
        //     children: [
        //       Container(
        //         color: Color.fromRGBO(223, 248, 255,1),
        //         height: 200,
        //         width: MediaQuery.of(context).size.width,
        //       ),
        //       Positioned(
        //         top: 40,
        //         left: 0,
        //         right: 0,
        //         bottom: 0,
        //         child: Align(
        //           alignment: Alignment.topCenter,
        //           child: Container(
        //             height: 50,
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Text(
        //                   'Andrew Staphie',
        //                   style: TextStyle(color: Colors.black),
        //                 ),
        //                 Text(
        //                   '@iamstaphuser',
        //                   style: TextStyle(color: Colors.black),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         top: 0,
        //         left: 0,
        //         right: 0,
        //         bottom: 0,
        //         // top: 100,
        //         // right: 50,
        //         // bottom: 0.0,
        //         child: Align(
        //           alignment: Alignment.center,
        //           child: new Container(
        //             height: 500,
        //             width: 270,
        //             decoration: new BoxDecoration(
        //                 color: Colors.white,
        //                 borderRadius: BorderRadius.circular(10)),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               children: [
        //                 Container(
        //                   margin: EdgeInsets.all(10),
        //                   width: 150,
        //                   height: 50,
        //                   decoration: new BoxDecoration(
        //                     color: Color.fromRGBO(223, 248, 255,1),
        //                     borderRadius: BorderRadius.circular(10),
        //                     border: Border.all(
        //                       color: Color.fromRGBO(223, 248, 255,1),
        //                     ),
        //                   ),
        //                   child:
        //                   InkWell(
        //                       onTap: () {
        //                         Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   Update_Acount_Screen()),
        //                         );
        //                       },
        //                       child: Row(
        //                         crossAxisAlignment: CrossAxisAlignment.center,
        //                         mainAxisAlignment: MainAxisAlignment.center,
        //                         children: [
        //                           Icon(
        //                             Icons.home,
        //                               color: Colors.black
        //                           ),
        //                           Text(
        //                             'Dashboard',
        //                             style: TextStyle(
        //                               fontFamily: 'Roboto',
        //                                 color: Colors.black
        //                             ),
        //                           ),
        //                         ],
        //                       )),
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.all(10),
        //                   width: 150,
        //                   height: 50,
        //                   decoration: new BoxDecoration(
        //                     color: Color.fromRGBO(223, 248, 255,1),
        //                     borderRadius: BorderRadius.circular(10),
        //                     border: Border.all(
        //                       color: Color.fromRGBO(223, 248, 255,1),
        //                     ),
        //                   ),
        //                   child: InkWell(
        //                       onTap: () {
        //                         Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   Update_Acount_Screen()),
        //                         );
        //                       },
        //                       child: Row(
        //                         crossAxisAlignment: CrossAxisAlignment.center,
        //                         mainAxisAlignment: MainAxisAlignment.center,
        //                         children: [
        //                           Icon(
        //                             Icons.person,
        //                               color: Colors.black
        //                           ),
        //                           Text(
        //                             'My Account',
        //                             style: TextStyle(
        //                                 fontFamily: 'Roboto',
        //                                 color: Colors.black),
        //                           ),
        //                         ],
        //                       )),
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.all(10),
        //                   width: 150,
        //                   height: 50,
        //                   decoration: new BoxDecoration(
        //                     color: Color.fromRGBO(223, 248, 255,1),
        //                     borderRadius: BorderRadius.circular(10),
        //                     border: Border.all(
        //                       color: Color.fromRGBO(223, 248, 255,1),
        //                     ),
        //                   ),
        //                   child: InkWell(
        //                     onTap: () {
        //                       Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                             builder: (context) => setting_screen()),
        //                       );
        //                     },
        //                     child: Row(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Icon(
        //                           Icons.settings,
        //                             color: Colors.black
        //                         ),
        //                         SizedBox(
        //                           width: 5,
        //                         ),
        //                         Text(
        //                           'Settings',
        //                           style: TextStyle(
        //                               fontFamily: 'Roboto',
        //                               color: Colors.black
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 Container(
        //                   width: 150,
        //                   height: 50,
        //                   margin: EdgeInsets.all(10),
        //                   decoration: new BoxDecoration(
        //                     color: Color.fromRGBO(223, 248, 255,1),
        //                     borderRadius: BorderRadius.circular(10),
        //                     border: Border.all(
        //                       color: Color.fromRGBO(223, 248, 255,1),
        //                     ),
        //                   ),
        //                   child: InkWell(
        //                     onTap: () {},
        //                     child: Row(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Icon(
        //                           Icons.perm_contact_cal_rounded,
        //                             color: Colors.black
        //                         ),
        //                         SizedBox(
        //                           width: 5,
        //                         ),
        //                         Text(
        //                           'Contact',
        //                           style: TextStyle(
        //                               fontFamily: 'Roboto',
        //                               color: Colors.black),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.all(10),
        //                   width: 150,
        //                   height: 50,
        //                   decoration: new BoxDecoration(
        //                     color: Color.fromRGBO(223, 248, 255,1),
        //                     borderRadius: BorderRadius.circular(10),
        //                     border: Border.all(
        //                       color: Color.fromRGBO(241, 248, 252, 20),
        //                     ),
        //                   ),
        //                   child: InkWell(
        //                     onTap: () {},
        //                     child: Row(
        //                       crossAxisAlignment: CrossAxisAlignment.center,
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Icon(
        //                           Icons.notifications,
        //                           color: Colors.black,
        //                         ),
        //                         Text(
        //                           'Notifications',
        //                           style: TextStyle(
        //                               fontFamily: 'Roboto',
        //                               color: Colors.black),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.all(10),
        //                   width: 240,
        //                   child: InkWell(
        //                     onTap: () {
        //                       Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                             builder: (context) =>
        //                                 User_Aggrement_Screen()),
        //                       );
        //                     },
        //                     child: Center(
        //                       child: Text(
        //                         'User Agreement',
        //                         style: TextStyle(
        //                             fontFamily: 'Roboto',
        //                             color: Color.fromRGBO(85, 104, 114, 10)),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 Container(
        //                   width: 240,
        //                   child: InkWell(
        //                     onTap: () {
        //                       Navigator.push(
        //                         context,
        //                         MaterialPageRoute(
        //                             builder: (context) => Privacy_policy()),
        //                       );
        //                     },
        //                     child: Center(
        //                       child: Text(
        //                         'Privacy Policy',
        //                         style: TextStyle(
        //                             fontFamily: 'Roboto',
        //                             color: Color.fromRGBO(85, 104, 114, 10)),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 Container(
        //                   margin: EdgeInsets.all(10),
        //                   width: 240,
        //                   child: InkWell(
        //                     onTap: () {
        //                       Widget cancelButton = TextButton(
        //                         child: Text("Cancel"),
        //                         onPressed: () {
        //                           Navigator.pop(context);
        //                         },
        //                       );
        //                       Widget continueButton = TextButton(
        //                         child: Text("Sign Out"),
        //                         onPressed: () {
        //                           Navigator.pushAndRemoveUntil(
        //                             context,
        //                             MaterialPageRoute(
        //                                 builder: (BuildContext context) =>
        //                                     Login_Screen()),
        //                             (route) => false,
        //                           );
        //                         },
        //                       );
        //
        //                       // set up the AlertDialog
        //                       AlertDialog alert = AlertDialog(
        //                         title: Text("Logout"),
        //                         content: Text("Do you want to Logout?"),
        //                         actions: [
        //                           cancelButton,
        //                           // continueButton,
        //                           Container(
        //                             height: 40,
        //                             width: 110,
        //                             child: MaterialButton(
        //                               shape: RoundedRectangleBorder(
        //                                   borderRadius:
        //                                       BorderRadius.circular(15)),
        //                               color: Color.fromRGBO(22, 97, 207, 10),
        //                               child: Text(
        //                                 'Logout',
        //                                 style: TextStyle(
        //                                   fontFamily: 'Roboto',
        //                                   color: Colors.white,
        //                                 ),
        //                               ),
        //                               onPressed: () {
        //                                 Navigator.push(
        //                                   context,
        //                                   MaterialPageRoute(
        //                                       builder: (context) =>
        //                                           Login_Screen()),
        //                                 );
        //                               },
        //                             ),
        //                           ),
        //                         ],
        //                       );
        //
        //                       // show the dialog
        //                       showDialog(
        //                         context: context,
        //                         builder: (BuildContext context) {
        //                           return alert;
        //                         },
        //                       );
        //                     },
        //                     child: Center(
        //                       child: Text(
        //                         'Sign Out',
        //                         style: TextStyle(
        //                             fontFamily: 'Roboto',
        //                             color: Color.fromRGBO(85, 104, 114, 10)),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 Center(
        //                     child: GestureDetector(
        //                       onTap: (){
        //                         Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   About_screen()),
        //                         );
        //                       },
        //                       child: Text(
        //                   'About',
        //                   style: TextStyle(
        //                         fontFamily: 'Roboto',
        //                         color: Color.fromRGBO(85, 104, 114, 10)),
        //                 ),
        //                     )),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white30,
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
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
                        height:65.0,
                        width: 70.0,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/logo.png'))),),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('(Customer Name)',style: TextStyle(color: Colors.white,fontSize: 17.0,fontWeight: FontWeight.w400),),
                    ),
                    SizedBox(height: 20.0,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25.0,),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Update_Acount_Screen()),
                      );
                      },child: Text('Dashboard',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 25.0,),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Update_Acount_Screen()),
                      );
                      },child: Text('My Account',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 25.0,),

                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => setting_screen()),
                      );
                      },child: Text('Settings',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 25.0,),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                User_Aggrement_Screen()),
                      );
                    },child: Text('User Agreement',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 25.0,),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Privacy_policy()),
                      );
                      },child: Text('Privacy Policy',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w400),)),
                    SizedBox(height: 25.0,),
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
                                          child: Text("Log Out",style: TextStyle(color: Colors.black),),
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
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Login_Screen()),
                                                  );
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
                                        child: Text('Log Out',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w400),)),),
                    SizedBox(height: 25.0,),
                    Text('Contact',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w400),),
                    SizedBox(height: 25.0,),
                    GestureDetector(
                    onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          About_screen()),
                                );
                              },
                        child: Text('About',style: TextStyle(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.w400),)),
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
