import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/disc_create/Select_Videos.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/login/verfication_email.dart';
import 'package:untitled/provider/widgets.dart';

class select_Video_Screen extends StatelessWidget {
  final img;
  const select_Video_Screen({Key? key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            'Select and Arrange Videos',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Enter your disc title',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      child: TextFormField(
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintStyle: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                            prefixStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                )),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.red))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'This will be the title that appears on your',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'disc case',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  Center(
                    child: Container(
                      height: widget().height,
                      width: widget().width,
                      child: MaterialButton(
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.orange,
                        child: Text(
                          'Select Videos',
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
                                builder: (context) => select_videos_screen()),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  Center(
                    child: Text(
                      'Total Available Space: 985 MB',
                      style: TextStyle(
                          height: 0.99,
                          color: Colors.pink,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: widget().sbheight,
                  ),
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Arrange your videos in the order that you want',
                            style: TextStyle(
                              height: 0.45,
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'them to play in from top (first) to bottom',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '(last) by dragging them into position',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  Center(
                    child: Container(
                      height: widget().height,
                      width: widget().width,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Color.fromRGBO(22, 97, 207, 10),
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontSize: widget().fontsize),
                        ),
                        onPressed: () {
                          // PageTransition(
                          //     duration: Duration(milliseconds: 300),
                          //     reverseDuration: Duration(milliseconds: 300),
                          //     type: PageTransitionType.rightToLeft,
                          //     child: select_videos_screen(),
                          //     inheritTheme: true,
                          //     ctx: context);
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => select_videos_screen()),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
