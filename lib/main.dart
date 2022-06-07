import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:untitled/login/loginscreen.dart';
import 'package:untitled/login/shippingadree.dart';
import 'package:untitled/login/user-Affrement.dart';
import 'package:untitled/provider/provider.dart';
import 'package:us_states/us_states.dart';
import 'package:untitled/provider/widgets.dart';

import 'login/privacy_policy.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(22, 97, 207, 10),
  ));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => mainprovider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //visualDensity: VisualDensity.adaptivePlatformDensity,

        iconTheme: IconThemeData(color: Colors.black),
        fontFamily: 'Roboto',
        backgroundColor: Colors.white,

        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool splash = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () => splash = true);
    // Navigator.pushReplacement(context,
    // MaterialPageRoute(builder: (context) => onboradingscreen_1()
    // )
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.white,
    //   child: Container(
    //     height: 20,
    //     width: 20,
    //     child: Image.asset(
    //       'images/last.png',
    //       height: 10,
    //       width: 10,
    //     ),
    //   ),
    // );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Image.asset('images/last.png', height: 130)),
          ),
          SizedBox(
            height: widget().sbheight,
          ),
          FutureBuilder(
              future: Future.delayed(Duration(seconds: 2)),
              builder: (c, s) => s.connectionState != ConnectionState.done
                  ? Container(
                      height: 40,
                      width: 110,
                    )
                  : Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40.0,
                            width: 150,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(22, 97, 207, 10),
                              child: Text(
                                'New User',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: widget().fontsize),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => MyHomePage(
                                            title: 'juiku8i',
                                          )),
                                );
                              },
                            ),
                          ),
                          Container(
                            height: 40.0,
                            width: 150,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(22, 97, 207, 10),
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: widget().fontsize),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Login_Screen()),
                                );
                              },
                            ),
                          ),
                        ],
                      )),
                    ))
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool agree = false;

  bool _isObscure = true;
  String? countryValue;
  String? stateValue;
  String? cityValue;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  TextEditingController Emailaddress = TextEditingController();
  TextEditingController confirmemailaddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  int? agelimit = 12;

  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    agelimit = age;
    return agelimit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 15, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Container(
                          child: Text(
                    'Create Your Account',
                    style: TextStyle(
                      fontFamily: 'calibri',
                      height: 1,
                      // color: Color.fromRGBO(22, 97, 207, 10),
                      color: widget().colorheading,
                      fontWeight: FontWeight.w800,
                      fontSize: widget().headingsize,
                    ),
                  ))),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Container(
                          child: Column(
                    children: [
                      Text(
                        'LifeCapture Media does not share any of',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        'your information in any way ',
                        style: TextStyle(color: Colors.black, fontSize: 15),
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
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: firstname,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your first name';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'First name',
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
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: lastname,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your last name';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Last name',
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
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: username,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your username';
                                    }
                                    return null;
                                  },
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
                            GestureDetector(
                              child: Container(
                                width: 310,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextFormField(
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    onTap: () async {
                                      var datePicked =
                                          await DatePicker.showSimpleDatePicker(
                                        context,
                                        cancelText: 'Ok',
                                        confirmText: 'Cancel',
                                        initialDate: DateTime(1994),
                                        firstDate: DateTime(1960),
                                        lastDate: DateTime(2012),
                                        dateFormat: "MMM d, yyyy	",
                                        locale: DateTimePickerLocale.en_us,
                                        looping: true,
                                      );
                                      setState(() {
                                        dateofbirth.text =
                                            '${datePicked!.month}-${datePicked.day}-${datePicked.year.toString()}';
                                      });

                                      print(calculateAge(datePicked!));

                                      dateofbirth = calculateAge(datePicked);

                                      print(dateofbirth.text);
                                      var datetime3 = DateFormat.MMMMEEEEd()
                                          .format(datePicked);
                                      print(datetime3);
                                    },
                                    controller: dateofbirth,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your date of birth';
                                      }
                                      if (agelimit! < 18) {
                                        return 'You must be at least 18 years old to use this service. ';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        errorStyle: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.calendar_today),
                                          onPressed: () async {},
                                        ),
                                        hintStyle: TextStyle(
                                          fontFamily: 'Roboto',
                                        ),
                                        prefixStyle:
                                            TextStyle(color: Colors.grey),
                                        hintText: 'Date of birth ',
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
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 310,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: Emailaddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email address';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Email address',
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
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: confirmemailaddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Confirm your email address';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Confirm email address',
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
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  controller: password,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    return null;
                                  },
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(
                                        fontFamily: 'Roboto',
                                      ),
                                      prefixStyle:
                                          TextStyle(color: Colors.grey),
                                      hintText: 'Password',
                                      suffixIcon: IconButton(
                                          icon: Icon(_isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          }),
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
                              height: 10,
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0.5),
                                    child: Transform.scale(
                                      scale: 0.59,
                                      child: Container(
                                        height: 15.0,
                                        width: 22.0,
                                        child: Checkbox(
                                            focusColor:
                                                Color.fromRGBO(252, 186, 24, 1),
                                            hoverColor:
                                                Color.fromRGBO(252, 186, 24, 1),
                                            checkColor:
                                                Color.fromRGBO(22, 97, 207, 10),
                                            activeColor: Colors.white,
                                            value: agree,
                                            onChanged: (value) {
                                              setState(() {
                                                agree = value ?? false;
                                              });
                                            }),
                                      ),
                                    ),
                                  ),
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'By proceeding I agree to LifeCapture Media’s\n',
                                          style: TextStyle(
                                              fontSize: 13.57,
                                              color: Colors.black),
                                        ),
                                        TextSpan(
                                          text: "User Agreement ",
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                            //  fontSize: 13.57
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        User_Aggrement_Screen()),
                                              );
                                            },
                                        ),
                                        TextSpan(
                                            text: "and",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 13.57)),
                                        TextSpan(
                                          text: " Privacy Policy ",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 13),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        Privacy_policy()),
                                              );
                                            },
                                        ),
                                      ]))
                                ])
                          ],
                        ),
                      ),
                    ],
                  ))),
                  SizedBox(
                    height: 22.0,
                  ),
                  Container(
                      height: widget().height,
                      width: widget().width,
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: agree
                              ? agelimit! > 18
                                  ? Color.fromRGBO(22, 97, 207, 10)
                                  : Colors.grey
                              : Colors.grey,
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontSize: widget().fontsize,
                            ),
                          ),
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              agree
                                  ? Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              Shipping_address(
                                                confirmemailaddress:
                                                    confirmemailaddress.text,
                                                dateofbirth: dateofbirth.text,
                                                emailaddress: Emailaddress.text,
                                                firstname: firstname.text,
                                                lastname: lastname.text,
                                                password: password.text,
                                              )),
                                    )
                                  : null;
                            } else {
                              return null;
                            }
                          })),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
