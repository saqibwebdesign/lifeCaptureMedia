import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/main.dart';
import 'package:untitled/models/cart_model.dart';
import 'package:untitled/models/profile_model.dart';
import 'package:untitled/models/shipping_address.dart';
import 'package:untitled/screens/Dashboard_screens/Home_Screen.dart';
import 'package:untitled/screens/cart/Checkout_screen.dart';
import 'package:untitled/screens/cart/cart_Screen.dart';
import 'package:untitled/screens/disc_create/Select_Videos.dart';
import 'package:untitled/screens/disc_create/select_disc_video.dart';
import 'package:untitled/screens/login/loginscreen.dart';

class api_calls with ChangeNotifier {
  var ab;
  var order;
  late String remark;
  var index = 0;
  var lat;
  var long;
  String locate = '';
  bool isvalue = false;
  var url = 'https://dnpprojects.com/demo/lifeCaptureMedia/api/';
  bool isdelete = false;

  //double _userRating = 0;

  login(email, password, BuildContext context) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;

    var data = {
      'email': email.toString(),
      'password': password.toString(),
    };
    var userHeader = {"Accept": "application/json"};

    final response = await http.post(
      Uri.parse(
        '${url}login?email=$email&password=$password',
      ),
      headers: userHeader,
    );

    if (response.statusCode == 200) {
      isvalue = false;
      var datas = (jsonDecode(response.body));

      var token = datas['data']['token'];
      final token1 = prefs.setString('new', token);
      final gettoken = prefs.getString('new');
      // var userid = datas['data']['user_id'];
      // final userid1 = prefs.setInt('tkn', userid);
      // final getuserid = prefs.getInt('tkn');
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => gettoken == null
                ? Login_Screen()
                : Home_Screen(
                    //   sts: getuserid
                    )),
      );
      SharedPreferences aa = await SharedPreferences.getInstance();
      aa.setString('new', datas);
      isvalue = false;
      print(gettoken);
      // print(getuserid);
      print(datas);
    } else if (response.statusCode == 404) {
      isvalue = false;
      _rotateDialog(context);
    } else if (response.statusCode == 500) {
      isvalue = false;
      _rotateDialog(context);
    } else {
      print(isvalue);
      _rotateDialog(context);

      var datas = (jsonDecode(response.body));
      print(datas);
      isvalue = false;
      return;
    }

    notifyListeners();
    print(isvalue);
    return;
  }

  logut(BuildContext context) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {'Authorization': 'Bearer $gettoken'};
    final response = await http.post(
      Uri.parse(
        '${url}logout',
      ),
      headers: userHeader,
    );
    if (response.statusCode == 200) {
      isvalue = false;
      var datas = (jsonDecode(response.body));
      print("Logout done");
      SharedPreferences tokn = await SharedPreferences.getInstance();
      SharedPreferences usrid = await SharedPreferences.getInstance();
      tokn.remove('new');
      usrid.remove('new');

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => MyHome()),
      );
      _dialog(context);
      isvalue = false;
      print(datas);
      print(response);
      notifyListeners();
      return datas;
    }

    notifyListeners();
    print(isvalue);
    return;
  }

  Future<profile> getuserdetails() async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.get(
      Uri.parse(
        '${url}profile/view',
      ),
      headers: userHeader,
    );

    var data = json.decode(response.body);

    if (response.statusCode == 200) {
      var details = profile.fromJson(data);
      print(details.user);
      return details;
    } else {
      return data;
    }
  }

  updateuserdetails(fname, lname, dateofbirth) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.post(
      Uri.parse(
        '${url}profile/update?firstname=$fname&lastname=$lname&dob=$dateofbirth',
      ),
      headers: userHeader,
    );
    var data = json.decode(response.body);
    if (response.statusCode == 200) {
      print(data);
      return data;
    } else {
      return data;
    }
  }

  Future<shipping_address> getshippingadress() async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.get(
      Uri.parse(
        '${url}allAddress',
      ),
      headers: userHeader,
    );

    var data = json.decode(response.body);

    if (response.statusCode == 200) {
      var details = shipping_address.fromJson(data);
      return details;
    } else {
      return data;
    }
  }

  adduserAddress(BuildContext context, add1, add2, cty, stat, zipcde) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.post(
      Uri.parse(
        '${url}addAddress?address_1=$add1&address_2=$add2&city=$cty&state=$stat&zipcode=$zipcde',
      ),
      headers: userHeader,
    );
    var data = json.decode(response.body);
    print(data);
    if (response.statusCode == 200) {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => cart_Screen()),
      );
      print(data);
      return data;
    } else {
      return data;
    }
  }

  cartstep1(BuildContext context, dvd, bluray) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.post(
      Uri.parse(
        '${url}cart/step1?dvd=$dvd&bluray=$bluray',
      ),
      headers: userHeader,
    );
    var data = json.decode(response.body);
    print(data);
    if (response.statusCode == 200) {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => select_Video_Screen()),
      );
      print(data);
      return data;
    } else {
      return data;
    }
  }

  cartstep2(BuildContext context, title) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.post(
      Uri.parse(
        '${url}cart/step2?disc_title=$title',
      ),
      headers: userHeader,
    );
    var data = json.decode(response.body);
    print(data);
    if (response.statusCode == 200) {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => select_videos_screen()),
      );
      print(data);
      return data;
    } else {
      return data;
    }
  }

  cartstep4(BuildContext context, adressid) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.post(
      Uri.parse(
        '${url}cart/step4?address_id=$adressid',
      ),
      headers: userHeader,
    );
    var data = json.decode(response.body);
    print(data);
    if (response.statusCode == 200) {
      print(adressid);
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => Checkout_Screen()),
      );
      print(data);
      return data;
    } else {
      return data;
    }
  }

  Future<allcart> checkout() async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.get(
      Uri.parse(
        '${url}cart/view',
      ),
      headers: userHeader,
    );

    var data = json.decode(response.body);

    if (response.statusCode == 200) {
      var details = allcart.fromJson(data);
      return details;
    } else {
      return data;
    }
  }

  Future menuitems() async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var longtitude = prefs.getDouble('longtitude');
    var latitude = prefs.getDouble('latitude');

    print(longtitude);
    print(latitude);

    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.get(
      Uri.parse(
        '${url}getRestuarant/${latitude}/${longtitude}',
      ),
      headers: userHeader,
    );
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data;
    } else {
      return;
    }
  }

  details_product(id) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    final longtitude = prefs.getDouble('longtitude');
    final latitude = prefs.getDouble('latitude');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.get(
      Uri.parse(
        '${url}getsingleRest/$id',
      ),
      headers: userHeader,
    );

    var datas = jsonDecode(response.body);

    return datas;
  }

  Future deatils_varient(id) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    final longtitude = prefs.getDouble('longtitude');
    final latitude = prefs.getDouble('latitude');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.get(
      Uri.parse(
        '${url}productDetail/$id',
      ),
      headers: userHeader,
    );
    var datas = jsonDecode(response.body);
    return datas;
  }

  void add_to_cart(
      product_id, restaurant_id, variant_id, price, quantity) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    final longtitude = prefs.getDouble('longtitude');
    final latitude = prefs.getDouble('latitude');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };

    final response = await http.post(
      Uri.parse(
        '${url}addCart?product_id=$product_id&restaurant_id=$restaurant_id&variant_id=$variant_id&price=$price&quantity=$quantity',
      ),
      headers: userHeader,
    );
    var datas = jsonDecode(response.body);
    print(datas);

    return datas;
  }

  Future get_cart() async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    final longtitude = prefs.getDouble('longtitude');
    final latitude = prefs.getDouble('latitude');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.get(
      Uri.parse(
        '${url}ShowAllCart',
      ),
      headers: userHeader,
    );
    print('getcart_listening');
    var data = json.decode(response.body);
    print(data);
    if (response.statusCode == 200) {
      return data;
    } else {
      return;
    }
  }

  void delete_cart(id) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    final longtitude = prefs.getDouble('longtitude');
    final latitude = prefs.getDouble('latitude');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.post(
      Uri.parse(
        '${url}destroyCart/$id',
      ),
      headers: userHeader,
    );
    if (response.statusCode == 200) {
      var datas = jsonDecode(response.body);
      print(datas);
      notifyListeners();
      print('deltecart_listening');
      Timer(Duration(seconds: 1), () {
        isdelete = false;
      });
      return datas;
    }
  }

  void update_cart(id, val) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.post(
      Uri.parse(
        '${url}updateCart/$id?quantity=$val',
      ),
      headers: userHeader,
    );
    var datas = jsonDecode(response.body);
    print(datas);

    notifyListeners();
    print('deltecart_listening');

    return datas;
  }

  submit(
    order,
    ab,
    _review,
    BuildContext context,
  ) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.post(
      Uri.parse(
        '${url}submitReview?orderId=$order&rating=$ab&reviews=$_review',
      ),
      headers: userHeader,
    );
    if (response.statusCode == 200) {
      isvalue = false;
      var datas = (jsonDecode(response.body));
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Column(
              children: [
                Icon(
                  Icons.check_circle_outlined,
                  size: 60,
                  color: Color.fromRGBO(252, 186, 24, 1),
                ),
                SizedBox(
                  height: 10,
                ),
                new Text(
                  "Review Submitted Sucessfully",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      );
      isvalue = false;
      print(datas);
    }
    notifyListeners();
    print(isvalue);
    return;
  }

  cancel(
    order,
    BuildContext context,
  ) async {
    final _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    final gettoken = prefs.getString('new');
    var userHeader = {
      "Accept": "application/json",
      'Authorization': 'Bearer $gettoken',
    };
    final response = await http.get(
      Uri.parse(
        '${url}cancelReview/$order',
      ),
      headers: userHeader,
    );

    if (response.statusCode == 200) {
      var datas = (jsonDecode(response.body));
      isvalue = false;
      print(datas);
    }
    notifyListeners();
    print(isvalue);
    return;
  }
}

Widget _dialog(BuildContext context) {
  return AlertDialog(
    title: const Text("Error"),
    content: const Text("Incorrect Password or Email "),
    actions: <Widget>[
      TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Okay"))
    ],
  );
}

void _rotateDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    pageBuilder: (ctx, a1, a2) {
      return Container();
    },
    transitionBuilder: (ctx, a1, a2, child) {
      return _dialog(ctx);
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}
