import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/login/Dashboard_screens/pending.dart';
import 'package:untitled/provider/widgets.dart';

import '../loginscreen.dart';
import '../shippingadree.dart';
import 'history.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

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
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(top: 3.5),
            child: Text(
              'Dashboard',
              style: TextStyle(
                fontFamily: 'calibri',
                color: widget().colorheading,
                fontSize: widget().headingsize,
                fontWeight: FontWeight.w800,
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(5),
                      height: 60,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(226, 232, 240, 40),
                          borderRadius: BorderRadius.circular(10)),
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)),
                        tabs: [
                          Tab(
                            child: Center(child: Text('History')),
                          ),
                          Tab(
                              icon: Text('Processing'
                                  '')),
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        history_screen(),
                        Pending_screen(),
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }
}
