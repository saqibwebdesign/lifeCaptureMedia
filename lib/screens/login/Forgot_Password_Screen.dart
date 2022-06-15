import 'package:flutter/material.dart';
import 'package:untitled/screens/login/verfication_email.dart';

class Forgot_Paswword_Screen extends StatelessWidget {
  const Forgot_Paswword_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Text(
              'Forgot Username/Password?',
              style: TextStyle(
                  color: Color.fromRGBO(22, 97, 207, 10),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Center(
              child: Column(
                children: [
                  Text(
                    'To change your Username/Reset Password, \nplease  enter the email address associated with your account.You will receive an email that will display your Username, and that contains instructions as to how to reset your password.',
                    textAlign: TextAlign.center,
                  ),

                  // Text('To change your Username/Reset Password,'),
                  // Text('please enter the email address associated with '),
                  // Text('your account. You will receive an email that will display your email that will display',textAlign: TextAlign.center,),
                  // Text(' your Username, and that contains instructions as to how to reset your password.'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Email Address',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                    ),
                    prefixStyle: TextStyle(color: Colors.grey),
                    hintText: ' Email Address',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red))),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 40,
              width: 110,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color.fromRGBO(22, 97, 207, 10),
                child: Text(
                  'Send Email',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Verfication_email_screen()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
