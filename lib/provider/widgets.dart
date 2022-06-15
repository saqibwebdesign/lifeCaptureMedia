import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/Shipping_Address_Screens/Select_Shipping_Address.dart';
import 'package:untitled/screens/Shipping_Address_Screens/Select_new_Address.dart';

class widget {
  double fontsize = 16;
  double sbheight = 25;
  double height = 40;
  double width = 200;
  double headingsize = 19;
  var colorheading = Colors.black;
  Widget appbar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Builder(builder: (context) {
            return Container(
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            );
          }),
        ),
        //SizedBox(width: 10.0,),
        Container(
            child: Image.asset(
          'images/logo.png',
          height: 15,
        )),
      ],
    );
  }

  Widget disc(name, color) {
    return new Center(
        child: new Container(
      height: 110,
      width: 115,
      decoration: new BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ],
        ),
      ),
    ));
  }

  Widget dropdownbutton(itm, ctr) {
    return Center(
      child: Container(
        width: 162,
        height: 59,
        child: Container(
          child: TextField(
            controller: ctr,
            //options: itm,
            decoration: InputDecoration(
              suffixIcon: PopupMenuButton<String>(
                padding: EdgeInsets.all(0),
      icon: const Icon(Icons.arrow_drop_down),
      onSelected: (String value) {
        ctr.text = value;
      },
      itemBuilder: (BuildContext context) {
        return itm
            .map<PopupMenuItem<String>>((String value) {
          return new PopupMenuItem(
              child: new Text(value), value: value);
        }).toList();
      },
    ),
              hintText: "Number of Discs",
              hintStyle: TextStyle(
                fontSize: 12,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red)),
              
             
            ),
          ),
        ),
      ),
    );
  }
}

class check {
  Widget Checka(int? bluerayno, int? dvdno, totalprice, int? dvdprice, int? bluerayprice) {
    return new Center(
        child: new Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      height: 140,
      width: 310,
      decoration: new BoxDecoration(
          border: Border.all(color: Colors.black),
          // color: Color.fromRGBO(245, 245, 245, 5),
          // color: Color.fromRGBO(223, 248, 255,1),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(top: 2, bottom: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Test disc 01',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                // SizedBox(
                //   width: 95,
                // ),
                Row(
                  children: [
                    Text(
                      '  Edit',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Remove',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(' ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text('Qty',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Price',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Blu-ray',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text(bluerayno.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 15,
                    ),
                    Text(bluerayprice.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DVD',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text(dvdno.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 15,
                    ),
                    Text(dvdprice.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Text('Free',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Text(totalprice.toString(),
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Widget Checkb(BuildContext context ,String? add1, String? add2, int? zip, String? stat, String? cit) {
    return new Center(
        child: new Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      height: 92,
      width: 310,
      decoration: new BoxDecoration(
          border: Border.all(color: Colors.black),
          // color: Color.fromRGBO(245, 245, 245, 5),
          // color: Color.fromRGBO(223, 248, 255,1),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(top: 2, bottom: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping Address',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                // SizedBox(
                //   width: 65,
                // ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => Select_Shipping_address_Screen()),
                      );
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                   '${ add1} ${add2}',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                   zip.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    '${ stat} ${cit}',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
            // Container(
            //
            //     child: Text(
            //   'Product',
            //   style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 15,
            //       fontWeight: FontWeight.bold),
            // )),
          ],
        ),
      ),
    ));
  }
}
