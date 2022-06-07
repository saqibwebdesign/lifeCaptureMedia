import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/login/Dashboard_screens/Home_Screen.dart';
import 'package:untitled/login/Forgot_Password_Screen.dart';
import 'package:untitled/login/privacy_policy.dart';
import 'package:untitled/login/user-Affrement.dart';
import 'package:untitled/provider/page_transition.dart';
import 'package:untitled/provider/provider.dart';
import 'package:untitled/provider/widgets.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      child: SingleChildScrollView(
          child: SafeArea(
        child: Container(
            padding: EdgeInsets.only(top: 40),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Container(
                          child: Text(
                    'Hi, Claire!',
                    style: TextStyle(
                        fontFamily: 'calibri',
                        color: widget().colorheading,
                        fontSize: widget().headingsize,
                        fontWeight: FontWeight.w800),
                  ))),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Container(
                          child: Column(
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color.fromRGBO(22, 97, 207, 10),
                          // color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: widget().headingsize,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  controller: username,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Username',
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  obscureText: _isObscure,
                                  controller: password,
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          icon: Icon(_isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          }),
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Password',
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )),
                                      errorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red)),
                                      focusedErrorBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.red))),
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    // padding:
                                    //     const EdgeInsets.only(right: 35 / 1),
                                    child: InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           Forgot_Paswword_Screen()),
                                    // );
                                  },
                                  child: const Text(
                                    "Forgot Username/Password?",
                                    style: TextStyle(
                                      color: Color.fromRGBO(22, 97, 207, 10),
                                    ),
                                  ),
                                )))
                          ],
                        ),
                      ),
                    ],
                  ))),
                  // SizedBox(
                  //   height: widget().sbheight,
                  // ),
                  SizedBox(
                    height: 22.0,
                  ),
                  Consumer<mainprovider>(builder: (context, provider, child) {
                    return Container(
                      height: widget().height,
                      width: widget().width,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color.fromRGBO(22, 97, 207, 10),
                        child: Text(
                          'Done',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            fontSize: widget().fontsize,
                          ),
                        ),
                        onPressed: () {
                          // provider.sigin(context,username.text, password.text);
                          // provider.islogedin
                          //     ?
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => Home_Screen()),
                          );

                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     maintainState: true,
                          //       builder: (context) => Home_Screen()),
                          // );
                        },
                      ),
                    );
                  }),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "By proceeding you agree to LifeCapture Media’s ",
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                    TextSpan(
                      text: "User Agreement ",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 12,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => User_Aggrement_Screen()),
                          );
                        },
                    ),
                  ])),
                  SizedBox(
                    height: 2,
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "and ",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 12,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => Privacy_policy()),
                          );
                        },
                    ),
                  ])),
                ])),
      )),
    ));
  }
}
