import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/api_calls/apicalls.dart';
import 'package:untitled/models/shipping_address.dart';
import 'package:untitled/provider/provider.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/Dashboard_screens/Drawer.dart';
import 'package:untitled/screens/Shipping_Address_Screens/Select_new_Address.dart';
import 'package:untitled/screens/cart/Checkout_screen.dart';
import 'package:untitled/screens/cart/cart_Screen.dart';

class Select_Shipping_address_Screen extends StatelessWidget {
  const Select_Shipping_address_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final address = Provider.of<api_calls>(context);
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
        child: Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Column(
            children: [
              FutureBuilder<shipping_address>(
                          future: address.getshippingadress(),
                          builder: (c,  snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator()
                              );
                            }
                            if (!snapshot.hasData)
                              return Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                     Text(
                                        "Nothing to show here",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Colors.grey,
                                        ),
                                      ),

                                    ],
                                  ));

                            if (snapshot.hasData) {
                              return Center(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: snapshot.data!.address?.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(bottom: 15,left: 13),
                                        child: InkWell(
                                          onTap: (){
                                            address.cartstep4(
                  context,  snapshot.data!.address![index].id,
                  );
                                            
                                         
                                          },
                                          child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                              
                                        children: [
                                          Text('${snapshot.data!.address![index].address1} ${snapshot.data!.address![index].address2}'),
                                           
                                          // Text('${snapshot.data!.address![index].address2}'),
                                        ],
                                              ),
                                              SizedBox(height: 3,),
                                              Text('${snapshot.data!.address![index].zipcode}'),
                                               SizedBox(height: 3,),
                                           Row(
                                              
                                        children: [
                                          Text('${snapshot.data!.address![index].city} ${snapshot.data!.address![index].state}'),
                                           
                                          // Text('${snapshot.data!.address![index].address2}'),
                                        ],
                                              ),                                         
                                            SizedBox(
                                            height: 5,
                                          ),
                                          Divider(
                                            thickness: 1.5,
                                          ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              );
                            }
                            if (snapshot.hasError) print(snapshot.error.toString());
                            return Align(
                              alignment: Alignment.center,
                              child: CircularProgressIndicator()
                            );
                          },
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
            ],
          ),
        ),
        
        
        
        
      ),
    );
  }
}
