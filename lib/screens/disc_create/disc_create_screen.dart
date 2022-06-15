
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/api_calls/apicalls.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/Dashboard_screens/Drawer.dart';
import 'package:untitled/screens/cart/cart_Screen.dart';
import 'package:untitled/screens/disc_create/select_disc_video.dart';

class disc_create_screen extends StatefulWidget {
  const disc_create_screen({Key? key}) : super(key: key);

  @override
  _disc_create_screenState createState() => _disc_create_screenState();
}

class _disc_create_screenState extends State<disc_create_screen> {
  
  @override
  Widget build(BuildContext context) {
     TextEditingController _dvd = TextEditingController();
  TextEditingController _ray = TextEditingController();
    final cart1 = Provider.of<api_calls>(context);
    bool _value = false;
    String _selected = "";
    String country_id;
    List<String> itm = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      '10',
      '11',
      '12',
      '13',
      '14',
      '15',
      '16',
      '17',
      '18',
      '19',
      '20',
    ];
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
            'Select Your Product',
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
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 600.0,
            // padding: EdgeInsets.only(bottom: 100.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget().disc('DVD', Colors.black),
                        SizedBox(
                          height: 10,
                        ),
                        widget().dropdownbutton(itm,_dvd),
                      ],
                    ),
                    Column(
                      children: [
                        widget()
                            .disc('Blu-ray', Color.fromRGBO(22, 97, 207, 10)),
                        SizedBox(
                          height: 10,
                        ),
                        widget().dropdownbutton(itm,_ray),
                      ],
                    ),
                  ],
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
                      'Next',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: widget().fontsize),
                    ),
                    onPressed: () {
                        cart1.cartstep1(
                  context,  _dvd.text,_ray.text,
                  );
                    
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
