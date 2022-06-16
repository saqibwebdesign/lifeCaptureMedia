import 'package:flutter/material.dart';

class About_screen extends StatelessWidget {
  const About_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'About',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/aboutlogo.png',
                    height: 120,
                  ),
                  Text('LifeCapture Media Mobile App'),
                  Text('Version 2.1'),
                  Text('Copyright© 2021 - All Rights Reserved'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
