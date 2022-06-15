import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/screens/Dashboard_screens/Home_Screen.dart';

class mainprovider extends ChangeNotifier {
  bool selectedbutton = true;
 bool islogedin = false;
  void Update() {
    selectedbutton = !selectedbutton;
    notifyListeners();
  }

  Future<List> register(
    firstname,
    lastname,
    username,
    email,
    dob,
    password,
    addressline01,
    addressline02,
    state,
    zipcode,
    confirm_email,
    confirm_password,
    status,
  ) async {
    var data = {
      'firstname': firstname,
      'lastname': lastname,
      'username': username,
      'email': email,
      'dob': dob,
      'addressline01': addressline01,
      'addressline02': addressline02,
      'state': state,
      'zipcode': zipcode,
      'confirm_email': confirm_email,
      'confirm_password': confirm_password,
      'status': '1',
    };

    final response = await http.post(
        Uri.parse(
          'https://dnpprojects.com/demo/lifeCaptureMedia/api/register',
        ),
        body: data);

    if (response.statusCode == 200) {
      var datas = (jsonDecode(response.statusCode.toString()));

      notifyListeners();
      print(datas);

      return datas;
    } else {
      throw Exception('error');
    }
  }

  Future one(
    firstname,
    lastname,
    username,
    email,
    dob,
    password,
    addressline01,
    addressline02,
    state,
    zipcode,
    confirm_email,
    confirm_password,
    status,
  ) async {
    try {
      var data = {
        'firstname': firstname,
        'lastname': lastname,
        'username': username,
        'email': email,
        'dob': dob,
        'password': password,
        'addressline01': addressline01,
        'addressline02': addressline02,
        'state': state,
        'zipcode': zipcode,
        'confirm_email': confirm_email,
        'confirm_password': confirm_password,
        'status': '1',
      };

      final response = await http.post(
          Uri.parse(
            'https://dnpprojects.com/demo/lifeCaptureMedia/api/register',
          ),
        body: data,
          headers: <String, String>{
            'Accept': 'application/json',
          },
          );

      var datas = (jsonDecode(response.body));


      print(datas['message']);

      return datas;
    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }
  Future sigin(
      BuildContext context,
      email,
      password,

      ) async {
    try {
      var data = {
        'email': email,
        'password': password,

      };

      final response = await http.post(
          Uri.parse(
            'https://dnpprojects.com/demo/lifeCaptureMedia/api/login',
          ),
          body: data);

      var datas = (jsonDecode(response.body));
       if(datas['message'].toString().contains( 'User logged-in!')){
         islogedin = true;
         print( 'true');

         print(datas['message']);

         Navigator.push(
           context,
           MaterialPageRoute(
               builder: (context) => Home_Screen()),
         );


       }
       else{
         islogedin = false;
         print(datas['message']);
         print( 'false');
         return AlertDialog(
           title: Text("Error"),
           content: Text(e.toString()),
           actions: [
             FlatButton(
               child: Text("Ok"),
               onPressed: () {
                 Navigator.of(context).pop();
               },
             )
           ],
         );
       }



    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }
}
