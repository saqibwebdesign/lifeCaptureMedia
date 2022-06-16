import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/api_calls/apicalls.dart';
import 'package:untitled/models/profile_model.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/login/loginscreen.dart';

class Update_Acount_Screen extends StatefulWidget {
  const Update_Acount_Screen({Key? key}) : super(key: key);

  @override
  _Update_Acount_ScreenState createState() => _Update_Acount_ScreenState();
}

class _Update_Acount_ScreenState extends State<Update_Acount_Screen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _fname = TextEditingController();
    TextEditingController _lname = TextEditingController();
    TextEditingController dateofbirth = TextEditingController();
    TextEditingController _email = TextEditingController();
    final profiles = Provider.of<api_calls>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Container(
            child: Text(
          'My Account',
          style: TextStyle(
              color: Color.fromRGBO(22, 97, 207, 10),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        )),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<profile>(
            future: profiles.getuserdetails(),
            builder: (c, snapshot) {
              _fname.text = snapshot.data!.user!.firstname ?? _fname.text;
              _lname.text = snapshot.data!.user!.lastname ?? _lname.text;
              dateofbirth.text = snapshot.data!.user!.dob ?? dateofbirth.text;
              _email.text = snapshot.data!.user!.email ?? _email.text;
              if (!snapshot.hasData) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              if (snapshot.hasData)
                return Container(
                  color: Colors.white,
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
                            'Life Capture Media does not share any  of',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            'your Information in any way ',
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
                                      controller: _fname,
                                      decoration: InputDecoration(
                                          hintStyle: TextStyle(
                                            fontFamily: 'Roboto',
                                          ),
                                          prefixStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: 'First name',
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
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 310,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextFormField(
                                      controller: _lname,
                                      decoration: InputDecoration(
                                          hintStyle: TextStyle(
                                            fontFamily: 'Roboto',
                                          ),
                                          prefixStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: 'Last name',
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
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 310,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: TextFormField(
                                      controller: dateofbirth,
                                      onTap: () async {
                                        var date = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime(2100));
                                        print(date.toString().substring(0, 10));
                                        setState(() {
                                          dateofbirth.text =
                                              date.toString().substring(0, 10);
                                        });
                                      },
                                      decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.calendar_today),
                                            onPressed: () async {
                                              var date = await showDatePicker(
                                                  context: context,
                                                  cancelText: 'Cancel',
                                                  confirmText: 'Ok',
                                                  initialDate: DateTime.now(),
                                                  firstDate: DateTime(1900),
                                                  lastDate: DateTime(2100));
                                              print(date
                                                  .toString()
                                                  .substring(0, 10));
                                            },
                                          ),
                                          hintStyle: TextStyle(
                                            fontFamily: 'Roboto',
                                          ),
                                          prefixStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: 'Date of Birth ',
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
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 310,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 230, 228, 228),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: TextFormField(
                                        readOnly: true,
                                        controller: _email,
                                        decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                              fontFamily: 'Roboto',
                                            ),
                                            prefixStyle:
                                                TextStyle(color: Colors.grey),
                                            hintText: 'Email address',
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
                                                        BorderRadius.circular(
                                                            10),
                                                    borderSide: BorderSide(
                                                        color: Colors.red))),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))),
                      SizedBox(
                        height: 20,
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
                              fontSize: widget().fontsize,
                            ),
                          ),
                          onPressed: () {
                            profiles.updateuserdetails(
                                _fname.text, _lname.text, dateofbirth.text);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              if (snapshot.hasError) print(snapshot.error.toString());
              return Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
