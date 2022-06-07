import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cart/Checkout_screen.dart';
import 'package:untitled/cart/add_Payment_screen.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/cart/payments_screen_list.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/provider/widgets.dart';

import 'cards_selection.dart';

class Payments_method_Screen extends StatelessWidget {
  const Payments_method_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.black38,
      appBar: AppBar(
        leadingWidth: 65,
        leading: widget().appbar(),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 3.5),
            child: Text(
              'Select Payment Method',
              style: TextStyle(
                  fontFamily: 'calibri',
                  color: widget().colorheading,
                  fontSize: widget().headingsize,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => cart_Screen()),
              );
            },
            icon: Icon(CupertinoIcons.cart_fill),
            color: Colors.black,
          )
        ],
      ),
      drawer: SizedBox(
        width: 180,
        child: Drawer(elevation: 0.0, child: drawer_Screen()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   CupertinoPageRoute(
                      //       builder: (context) => payment_card_list()),
                      // );
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.credit_card),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Credit/Debit Card'),
                                PopupMenuButton(
                                    icon: Icon(Icons.arrow_drop_down),
                                    // add icon, by default "3 dot" icon
                                    // icon: Icon(Icons.book)
                                    itemBuilder: (context) {
                                      return [
                                        PopupMenuItem<int>(
                                          value: 2,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                  builder: (context) =>
                                                      add_Payment_screen(
                                                    img:
                                                        'images/masterlogo.png',
                                                    title: 'Visa',
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                              'images/visa.jpg',
                                              height: 45,
                                              width: 45,
                                            ),
                                          ),
                                        ),
                                        PopupMenuItem<int>(
                                          value: 1,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                  builder: (context) =>
                                                      add_Payment_screen(
                                                    img:
                                                        'images/masterlogo.png',
                                                    title: 'Mastercard',
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                              'images/masterlogo.png',
                                              height: 45,
                                              width: 45,
                                            ),
                                          ),
                                        ),
                                        PopupMenuItem<int>(
                                          value: 2,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                  builder: (context) =>
                                                      add_Payment_screen(
                                                    img:
                                                        'images/americanexpress.jpg',
                                                    title: 'American Express',
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                              'images/americanexpress.jpg',
                                              height: 45,
                                              width: 45,
                                            ),
                                          ),
                                        ),
                                        PopupMenuItem<int>(
                                          value: 0,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                  builder: (context) =>
                                                      add_Payment_screen(
                                                    img:
                                                        'images/discovercard.png',
                                                    title: 'Discover',
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Image.asset(
                                              'images/discovercard.png',
                                              height: 45,
                                              width: 45,
                                            ),
                                          ),
                                        ),
                                      ];
                                    },
                                    onSelected: (value) {
                                      if (value == 0) {
                                        print("My account menu is selected.");
                                      } else if (value == 1) {
                                        print("Settings menu is selected.");
                                      } else if (value == 2) {
                                        print("Logout menu is selected.");
                                      }
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/paypal.jpg',
                                height: 50,
                                width: 80,
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/gpay.png',
                                height: 50,
                                width: 50,
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/applepay.png',
                                height: 50,
                                width: 50,
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
