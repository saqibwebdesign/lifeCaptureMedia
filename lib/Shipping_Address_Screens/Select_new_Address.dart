import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cart/cart_Screen.dart';
import 'package:untitled/login/Dashboard_screens/Drawer.dart';
import 'package:untitled/login/loginscreen.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:us_states/us_states.dart';

class select_new_Address_screen extends StatelessWidget {
  const select_new_Address_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> valuestate = [
      'Alaska',
      'Alabama',
      'Arkansas',
      'Arizona',
      'California',
      'Colorado',
      'Connecticut',
      'District of Columbia',
      'Delaware',
      'Florida',
      'Georgia',
      'Hawaii',
      'Iowa',
      'Idaho',
      'Illinois',
      'Indiana',
      'Kansas',
      'Kentucky',
      'Louisiana',
      'Massachusetts',
      'Maryland',
      'Maine',
      'Michigan',
      'Minnesota',
      'Missouri',
      'Mississippi',
      'Montana',
      'North Carolina',
      'North Dakota',
      'Nebraska',
      'New Hampshire',
      'New Jersey',
      'New Mexico',
      'Nevada',
      'New York',
      'Ohio',
      'Oklahoma',
      'Oregon',
      'Pennsylvania',
      'Rhode  Island ',
      'South Carolina',
      'South Dakota',
      'Tennessee',
      'Texas',
      'Utah',
      'Virginia',
      'Vermont',
      'Washington',
      'Wisconsin',
      'West Virginia',
      'Wyoming'
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      drawerScrimColor: Colors.black38,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 3.5),
          child: Text(
            'Enter Shipping Address',
            style: TextStyle(
              fontFamily: 'calibri',
              color: widget().colorheading,
              fontWeight: FontWeight.w800,
              fontSize: widget().headingsize,
            ),
          ),
        ),
        centerTitle: true,
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
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      drawer: SizedBox(
        width: 180,
        child: Drawer(elevation: 0.0, child: drawer_Screen()),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                Center(
                    child: Container(
                        child: Column(
                  children: [
                    Text(
                      'LifeCapture Media does not share any of',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Text(
                      'your information in any way ',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 310,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontFamily: 'Roboto',
                                    ),
                                    prefixStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Address line 1',
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
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.red))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 310,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontFamily: 'Roboto',
                                    ),
                                    prefixStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Address line 2',
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
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.red))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 310,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    // suffixIcon: IconButton(
                                    //     icon: Icon(Icons.arrow_drop_down),
                                    //     onPressed: () {}),
                                    hintStyle: TextStyle(
                                      fontFamily: 'Roboto',
                                    ),
                                    prefixStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Select city',
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
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.red))),
                              ),
                            ),
                          ),
                          Container(
                            width: 310,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextDropdownFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter state';
                                  }
                                  return null;
                                },
                                // controller: selectstate.text,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontFamily: 'Roboto',
                                    ),
                                    prefixStyle: TextStyle(color: Colors.grey),
                                    hintText: 'State',
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
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.red))),
                                options: valuestate,
                                dropdownHeight: 320,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 310,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, left: 5.0, right: 5.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontFamily: 'Roboto',
                                    ),
                                    prefixStyle: TextStyle(color: Colors.grey),
                                    hintText: 'Zip code',
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
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.red))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: widget().sbheight,
                          ),
                          Container(
                            height: widget().height,
                            width: widget().width,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color.fromRGBO(22, 97, 207, 10),
                              child: Text(
                                'Done',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: widget().fontsize),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => cart_Screen()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
