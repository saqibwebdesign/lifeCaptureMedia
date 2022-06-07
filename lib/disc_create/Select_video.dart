import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Shipping_Address_Screens/Select_Shipping_Address.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/disc_create/Select_Videos.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/login/verfication_email.dart';
import 'package:untitled/provider/widgets.dart';

class Select_sort_video_Screen extends StatefulWidget {
  const Select_sort_video_Screen({Key? key}) : super(key: key);

  @override
  _Select_sort_video_ScreenState createState() =>
      _Select_sort_video_ScreenState();
}

class _Select_sort_video_ScreenState extends State<Select_sort_video_Screen> {
  @override
  Widget build(BuildContext context) {
    bool _flag = true;
    bool selected = false;
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

                  //  textField

                  Center(
                    child: Container(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // text
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
                ],
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            Center(
              child: Container(
                height: widget().height,
                width: widget().width,
                child: MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
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
                          builder: (context) =>
                              Select_Shipping_address_Screen()),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              'Total Available Space: 985 MB',
              style: TextStyle(
                  height: 0.99,
                  color: Colors.pink,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: widget().sbheight,
            ),
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
            SizedBox(
              height: widget().sbheight,
            ),
            Container(
              height: 230,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return GestureDetector(
                        onTap: () => setState(() => _flag = !_flag),
                        child: Container(
                            height: 100,
                            width: 400,
                            margin: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 30.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: _flag
                                    ? Colors.white
                                    : Color.fromRGBO(252, 228, 236, 10),
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 80,
                                  width: 120,
                                  color: selected
                                      ? Colors.red
                                      : Colors.grey.shade300,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Text(
                                        'Video testing 01',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '64.00 MB',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: _flag ? Colors.grey : Colors.red,
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(5)),
                                  child: Icon(
                                    Icons.delete,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() => _flag = !_flag);
                                  },
                                )
                              ],
                            )),
                      );
                    });
                  }),
            ),
            SizedBox(
              height: widget().sbheight,
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
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) =>
                              Select_Shipping_address_Screen()),
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
