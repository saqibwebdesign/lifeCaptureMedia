import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/api_calls/apicalls.dart';
import 'package:untitled/provider/provider.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/Dashboard_screens/Home_Screen.dart';
import 'package:untitled/screens/login/create_account.dart';
import 'package:untitled/screens/login/privacy_policy.dart';
import 'package:untitled/screens/login/shippingadree.dart';
import 'package:untitled/screens/login/user-Affrement.dart';

import 'screens/login/loginscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences aa = await SharedPreferences.getInstance();
  final gettoken = aa.getString('new');
  print(gettoken);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(22, 97, 207, 10),
  ));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => api_calls()),
        ChangeNotifierProvider(create: (_) => mainprovider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Life Capture Media',
        theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.black),
          fontFamily: 'Roboto',
          backgroundColor: Colors.white,
          primarySwatch: Colors.blue,
        ),
        home: gettoken == null ? MyHome() : Home_Screen(),
      ),
    ),
  );
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
  }

  @override
  Widget build(BuildContext context) {
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
                                      builder: (context) => createaccount(
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
