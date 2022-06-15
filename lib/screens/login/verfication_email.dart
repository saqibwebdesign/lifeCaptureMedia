import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verfication_email_screen extends StatelessWidget {
  const Verfication_email_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Confirm Code',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Text(
              'Forgot Your Password?',
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
                  child: Column(children: [
            Text(
              'Please enTer verfication code to you received',
              style: TextStyle(color: Colors.grey),
            ),
            Text('Divsnpixel@gmail.com',
                style: TextStyle(
                  color: Color.fromRGBO(22, 97, 207, 10),
                )),
          ]))),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: PinCodeTextField(
              // controller:otpfield123  ,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,

              pinTheme: PinTheme(
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                selectedColor: Colors.white,
                disabledColor: Colors.white,
                selectedFillColor: Colors.white,
                inactiveFillColor: Colors.grey,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,

              // onCompleted: (v) {
              //   print("Completed");
              //   value=v;
              // },
              // onChanged: (value) {
              //   print(value);
              //   setState(() {
              //     currenttext = value;
              //   });
              // },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");

                return true;
              },
              appContext: context,
              onChanged: (String value) {},
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 210,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color.fromRGBO(22, 97, 207, 10),
                child: Text(
                  'CONFIRM',
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
