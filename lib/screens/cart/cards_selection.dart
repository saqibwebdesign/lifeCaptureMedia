import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/Dashboard_screens/Drawer.dart';
import 'package:untitled/screens/cart/add_Payment_screen.dart';
import 'package:untitled/screens/cart/cart_Screen.dart';

class payment_card_list extends StatefulWidget {
  const payment_card_list({Key? key}) : super(key: key);

  @override
  _payment_card_listState createState() => _payment_card_listState();
}

class _payment_card_listState extends State<payment_card_list> {
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cart_Screen()),
              );
            },
            icon: Icon(CupertinoIcons.cart_fill),
            color: Colors.black,
          )
        ],
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        backgroundColor: Colors.white,

        elevation: 0.0,
        title: Text(
          'Add payment',
          style: TextStyle(
              color: widget().colorheading,
              fontSize: widget().headingsize,
              fontWeight: FontWeight.bold),
        ),
      ),
      drawer: SizedBox(
        width: 180,
        child: Drawer(elevation: 0.0, child: drawer_Screen()),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => add_Payment_screen(
                    img: 'images/discovercard.png',
                    title: 'Discover',
                  ),
                ),
              );
            },
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            ),

            //
            leading: Image.asset(
              'images/discovercard.png',
              height: 45,
              width: 45,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => add_Payment_screen(
                    img: 'images/masterlogo.png',
                    title: 'Mastercard',
                  ),
                ),
              );
            },
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            ),
            leading: Image.asset(
              'images/masterlogo.png',
              height: 45,
              width: 45,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => add_Payment_screen(
                    img: 'images/masterlogo.png',
                    title: 'Visa',
                  ),
                ),
              );
            },
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            ),
            leading: Image.asset(
              'images/visa.jpg',
              height: 45,
              width: 45,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => add_Payment_screen(
                    img: 'images/americanexpress.jpg',
                    title: 'American Express',
                  ),
                ),
              );
            },
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            ),
            leading: Image.asset(
              'images/americanexpress.jpg',
              height: 45,
              width: 45,
            ),
          )
        ],
      ),
    );
  }
}
