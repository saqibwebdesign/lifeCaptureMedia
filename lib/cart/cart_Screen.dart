import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Shipping_Address_Screens/Select_Shipping_Address.dart';
import 'package:untitled/Shipping_Address_Screens/Select_new_Address.dart';
import 'package:untitled/cart/Checkout_screen.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/login/shippingadree.dart';
import 'package:untitled/provider/widgets.dart';

class cart_Screen extends StatelessWidget {
  const cart_Screen({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.only(top: 3.5),
          child: Text(
            'Cart',
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
        child: Drawer(elevation: 0.0, child: drawer_Screen()),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                      'Create New Disc',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: widget().fontsize),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => select_new_Address_screen()),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(22, 97, 207, 10),
                    border: Border.all(
                      color: Color.fromRGBO(22, 97, 207, 10),
                    ),
                  ),
                  height: widget().height,
                  width: widget().width,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Checkout',
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
                            builder: (context) => Checkout_Screen()),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
