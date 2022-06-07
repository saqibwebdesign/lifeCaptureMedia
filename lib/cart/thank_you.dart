import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Shipping_Address_Screens/Select_new_Address.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/login/Dashboard_screens/Home_Screen.dart';
import 'package:untitled/provider/widgets.dart';

class Thankyou_screen extends StatelessWidget {
  const Thankyou_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawerScrimColor: Colors.black38,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Image.asset(
                'images/aboutlogo.png',
                height: 100,
              )),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                'Thank you for your order!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Your confirmation number is',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              )),

              Center(
                  child: Text(
                'Lifecapture 93c34sdetgh',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'You will recieve a confirmation',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )),
              Center(
                  child: Text(
                'shortly via email',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              )),
              SizedBox(
                height: 10,
              ),

              // Center(
              //   child: Container(
              //     padding: EdgeInsets.only(left: 10, right: 10),
              //     height: 40,
              //     width: 310,
              //     decoration: new BoxDecoration(
              //         border: Border.all(color: Colors.black),
              //         // color: Color.fromRGBO(245, 245, 245, 5),
              //         // color: Color.fromRGBO(223, 248, 255,1),
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(5)),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Text(
              //           'Test disc 01',
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 15,
              //               fontWeight: FontWeight.bold),
              //         ),
              //         SizedBox(
              //           width: 80,
              //         ),
              //         Row(
              //           children: [
              //             Text(
              //               '',
              //               style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 15,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               '',
              //               style: TextStyle(
              //                   color: Colors.black,
              //                   fontSize: 15,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //           ],
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              new Center(
                  child: new Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                height: 120,
                width: 310,
                decoration: new BoxDecoration(
                    border: Border.all(color: Colors.black),
                    // color: Color.fromRGBO(245, 245, 245, 5),
                    // color: Color.fromRGBO(223, 248, 255,1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Test disc 01',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('Qty',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 15,
                              ),
                              Text('Price',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Blu-ray',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Text('1',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 15,
                              ),
                              Text('25.00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('DVD',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Text('2',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 15,
                              ),
                              Text('28.00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text('Free',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text('100.00',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 2,
              ),

              check().Checkb(),
              SizedBox(
                height: widget().sbheight,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  height: widget().height,
                  width: widget().width,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromRGBO(22, 97, 207, 10),
                    child: Text(
                      'Return to Dashboard',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: widget().fontsize),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => Home_Screen()),
                      );
                    },
                  ),
                ),
              ),
              // Container(
              //
              //     child: Text(
              //   'Product',
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 15,
              //       fontWeight: FontWeight.bold),
              // )),
            ],
          ),
        ));
  }
}
