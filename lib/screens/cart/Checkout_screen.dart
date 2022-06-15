import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/api_calls/apicalls.dart';
import 'package:untitled/models/cart_model.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/Dashboard_screens/Drawer.dart';
import 'package:untitled/screens/cart/Payments_method.dart';
import 'package:untitled/screens/cart/cart_Screen.dart';

class Checkout_Screen extends StatelessWidget {
  const Checkout_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final cart = Provider.of<api_calls>(context);
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
      drawer: SizedBox(
        width: 180,
        child: Drawer(elevation: 0.0, child: drawer_Screen()),
      ),
      body: FutureBuilder<allcart>(
                    future: cart.checkout(),
                        builder: (c,  snapshot) {
       var bluerayno =snapshot.data!.cart!.noOfBluray;
                 var dvdno =snapshot.data!.cart!.noOfDvd;
                  var totalprice =snapshot.data!.cart!.totalPrice;
                  var dvdprice =snapshot.data!.dvdPrice;
                  var bluerayprice =snapshot.data!.blurayPrice;
                  var add1 =snapshot.data!.cart!.shipping! .address1;
                   var add2 =snapshot.data!.cart!.shipping! .address2;
                    var zip =snapshot.data!.cart!.shipping! .zipcode;
                     var stat =snapshot.data!.cart!.shipping! .state;
                      var cit =snapshot.data!.cart!.shipping!.city;

 if (snapshot.connectionState == ConnectionState.waiting) {
                            return Center(
                              child: CircularProgressIndicator()
                            );
                          }
                           if (!snapshot.hasData) {
     return Container(
       child: Center(
         child: CircularProgressIndicator(),
       ),
     );
}
  var data = snapshot.data;
      if (data == null) {
    return const Center(child: CircularProgressIndicator());
  }
                                    if (snapshot.hasData) {
                                      return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            check().Checka(bluerayno,dvdno,totalprice,dvdprice,bluerayprice),
            SizedBox(
              height: 2,
            ),
            check().Checkb(context, add1,add2,zip,stat,cit),
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
        );

                        }
if (snapshot.hasError) print(snapshot.error.toString());
                          return Align(
                            alignment: Alignment.center,
                            child: CircularProgressIndicator()
                          );
                        
                        }
        
        
      
      ),
    );
  }
}
