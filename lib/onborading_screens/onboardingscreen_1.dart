import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login/loginscreen.dart';
import 'package:untitled/main.dart';

class onboradingscreen_1 extends StatelessWidget {
  const onboradingscreen_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Image.asset('images/last.png')),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 110,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromRGBO(22, 97, 207, 10),
                    child: Text(
                      'New user',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
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
                  height: 40,
                  width: 110,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromRGBO(22, 97, 207, 10),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => Login_Screen()),
                      );
                    },
                  ),
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
