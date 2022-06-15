import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/disc_create/disc_create_screen.dart';


class history_screen extends StatelessWidget {
  const history_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                'Completed Orders',
                style: TextStyle(color: Colors.grey),
              )),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 2.0,
              ),
              Center(
                child: Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SizedBox(height:240,),
                        Container(
                          child: Column(
                            children: [
                              Center(
                                  child: Text(
                                'No history found ',
                                style: TextStyle(color: Colors.grey),
                              )),
                              Center(
                                  child: Text(
                                'Select "Create New Disc" to begin',
                                style: TextStyle(color: Colors.grey),
                              ))
                            ],
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
                                      builder: (context) =>
                                          disc_create_screen()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
