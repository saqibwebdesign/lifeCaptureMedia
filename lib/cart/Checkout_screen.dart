import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Shipping_Address_Screens/Select_new_Address.dart';
import 'package:untitled/cart/Payments_method.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/provider/widgets.dart';

class Checkout_Screen extends StatelessWidget {
  const Checkout_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 65,
        leading: widget().appbar(),
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
          ),
        ],
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),

        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 3.5),
          child: Text(
            'Checkout',
            style: TextStyle(
                fontFamily: 'calibri',
                color: widget().colorheading,
                fontSize: widget().headingsize,
                fontWeight: FontWeight.w800),
          ),
        ),
      ),
      // body: Container(
      //
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //
      //     children: [
      //
      //               SizedBox(height: 450,),
      //               Center(
      //                 child: Container(
      //                   child: Column(
      //                     children: [
      //                       Text('No history found',style: TextStyle(color: Colors.grey,fontSize: 20),),
      //                       Text('Select "Create new disk" to begin',style: TextStyle(color: Colors.grey),)
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(height: 30,),
      //               Center(
      //                 child: Container(
      //                   height:60,
      //                   width: 190,
      //                   child: MaterialButton(
      //                     shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(10)),
      //                     color: Color.fromRGBO(22, 97, 207, 10),
      //                     child: Text(
      //                       'CREATE NEW DISK',
      //                       style: TextStyle(
      //                         fontFamily: 'Roboto',
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => Shipping_address()),
      //                       );
      //                     },
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           )
      //       ),
      drawer: SizedBox(
        width: 180,
        child: Drawer(elevation: 0.0, child: drawer_Screen()),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            check().Checka(),
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
                    'Confirm',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: widget().fontsize),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => Payments_method_Screen()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
