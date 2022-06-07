import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Shipping_Address_Screens/Select_new_Address.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/provider/provider.dart';
import 'package:untitled/provider/widgets.dart';

class Select_Shipping_address_Screen extends StatelessWidget {
  const Select_Shipping_address_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool valueselect = true;
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.black38,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        leadingWidth: 65,
        leading: widget().appbar(),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 3.5),
          child: Text(
            'Select Shipping Address',
            style: TextStyle(
                fontFamily: 'calibri',
                color: widget().colorheading,
                fontSize: widget().headingsize,
                fontWeight: FontWeight.w800),
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
        child: Drawer(child: drawer_Screen()),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 150,
                    child: Consumer<mainprovider>(
                      builder: (context, message, child) => ListView.builder(
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bob K Pietro',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  Text(
                                    '55 Any Street',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  Text(
                                    'Portland, OR 12345',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    thickness: 1.5,
                                  ),
                                  SizedBox(
                                    height: widget().sbheight,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: widget().height,
                                      width: widget().width,
                                      child: MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        color: Color.fromRGBO(22, 97, 207, 10),
                                        child: Text(
                                          'Add New Address',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: Colors.white,
                                            fontSize: widget().fontsize,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            CupertinoPageRoute(
                                                builder: (context) =>
                                                    select_new_Address_screen()),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  // Container(
                                  //   height: widget().height,
                                  //   width: widget().width,
                                  //   child: MaterialButton(
                                  //     shape: RoundedRectangleBorder(
                                  //         borderRadius: BorderRadius.circular(10)),
                                  //     color: message.selectedbutton?   Color.fromRGBO(22, 97, 207, 10)  : Color.fromRGBO(0,120,213,10),
                                  //     child: Text(
                                  //       'Select',
                                  //       style: TextStyle(
                                  //         fontFamily: 'Roboto',
                                  //         color: Colors.white,
                                  //         fontSize: widget().fontsize
                                  //       ),
                                  //     ),
                                  //     onPressed: ()=> message.Update()  ,
                                  //     // onPressed: () {
                                  //     //
                                  //     //   Navigator.push(
                                  //     //     context,
                                  //     //     MaterialPageRoute(
                                  //     //         builder: (context) => Select_Shipping_address_Screen()),
                                  //     //   );
                                  //     // },
                                  //   ),
                                  // ),
                                ],
                              ),
                            );
                          }),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
