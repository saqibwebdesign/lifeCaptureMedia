
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/provider.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/Dashboard_screens/Home_Screen.dart';

class Shipping_address extends StatefulWidget {
  final firstname;
  final lastname;
  final dateofbirth;
  final emailaddress;
  final confirmemailaddress;
  final password;

  const Shipping_address(
      {Key? key,
      this.firstname,
      this.lastname,
      this.dateofbirth,
      this.emailaddress,
      this.confirmemailaddress,
      this.password})
      : super(key: key);

  @override
  _Shipping_addressState createState() => _Shipping_addressState();
}

class _Shipping_addressState extends State<Shipping_address> {
  TextEditingController addressline1 = TextEditingController();
  TextEditingController addressline2 = TextEditingController();
  String selectstate = TextEditingController().text;
  TextEditingController zipcode = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool spinner = false;

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(
            child: Container(
                child: Text(
          'Enter Shipping Address',
          style: TextStyle(
            color: Color.fromRGBO(22, 97, 207, 10),
            fontWeight: FontWeight.bold,
            fontSize: widget().headingsize,
          ),
        ))),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Container(
                          child: Column(
                    children: [
                      // Text(
                      //   'Life Capture Media does not share any  of',
                      //   style: TextStyle(color: Colors.black, fontSize: 15),
                      // ),
                      // Text(
                      //   'your Information in any way ',
                      //   style: TextStyle(color: Colors.black, fontSize: 15),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                width: 310,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter address';
                                      }
                                      return null;
                                    },
                                    controller: addressline1,
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                          fontFamily: 'Roboto',
                                        ),
                                        prefixStyle:
                                            TextStyle(color: Colors.grey),
                                        hintText: 'Address Line 1',
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: Colors.grey,
                                            )),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red)),
                                        focusedErrorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                BorderSide(color: Colors.red))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  width: 310,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      controller: addressline2,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter address';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          hintStyle: TextStyle(
                                            fontFamily: 'Roboto',
                                          ),
                                          prefixStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: 'Address Line 2',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.red)),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                      color: Colors.red))),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  width: 310,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      decoration: InputDecoration(
                                          // suffixIcon: IconButton(
                                          //     icon: Icon(Icons.arrow_drop_down),
                                          //     onPressed: () {}),
                                          hintStyle: TextStyle(
                                            fontFamily: 'Roboto',
                                          ),
                                          prefixStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: 'Select City',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.red)),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                      color: Colors.red))),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  width: 310,
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
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
                                          prefixStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: 'Select state',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.red)),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                      color: Colors.red))),
                                      options: valuestate,
                                      dropdownHeight: 420,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  width: 310,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter zipcode';
                                        }
                                        return null;
                                      },
                                      controller: zipcode,
                                      decoration: InputDecoration(
                                          hintStyle: TextStyle(
                                            fontFamily: 'Roboto',
                                          ),
                                          prefixStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: 'Zip Code',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )),
                                          errorBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.red)),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                      color: Colors.red))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))),
                  SizedBox(
                    height: 20,
                  ),
                  Consumer<mainprovider>(builder: (context, provider, child) {
                    return spinner
                        ? CircularProgressIndicator()
                        : Container(
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
                                  fontSize: widget().fontsize,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => Home_Screen()),
                                );
                                // print(widget.password);
                                // if (formkey.currentState!.validate()) {
                                //   provider.one(
                                //       widget.firstname,
                                //       widget.lastname,
                                //       widget.lastname,
                                //       widget.emailaddress,
                                //       widget.dateofbirth,
                                //       widget.password,
                                //       addressline1.text,
                                //       addressline2.text,
                                //       selectstate,
                                //       zipcode.text,
                                //       widget.confirmemailaddress,
                                //       widget.password,
                                //       '1');
                                // } else {
                                //   return null;
                                // }
                                // provider.one(
                                //     widget.firstname,
                                //     widget.lastname,
                                //     widget.firstname,
                                //     widget.emailaddress,
                                //     widget.dateofbirth,
                                //     widget.password,
                                //     addressline1.text,
                                //     addressline2.text,
                                //     selectstate.text,
                                //     zipcode.text,
                                //     widget.confirmemailaddress,
                                //     widget.password,
                                //     '1');
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => Login_Screen()),
                                // );
                              },
                            ),
                          );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
