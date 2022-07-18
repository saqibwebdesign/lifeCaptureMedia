import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:untitled/api_calls/apicalls.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/Dashboard_screens/Drawer.dart';
import 'package:untitled/screens/cart/cart_Screen.dart';

class select_videos_screen extends StatefulWidget {
  @override
  _select_videos_screenState createState() => _select_videos_screenState();
}

class _select_videos_screenState extends State<select_videos_screen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  String? _fileName;
  String? _saveAsFileName;
  List? _paths;
  String? _directoryPath;
  String? _extension;
  bool _isLoading = false;
  bool _userAborted = false;
  bool _multiPick = false;
  FileType _pickingType = FileType.any;
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => _extension = _controller.text);
  }

  void _pickFiles() async {
    _resetState();
    try {
      _directoryPath = null;
      _paths = (await FilePicker.platform.pickFiles(
        type: FileType.video,
        allowMultiple: true,
        onFileLoading: (FilePickerStatus status) => print(status),
        allowedExtensions: (_extension?.isNotEmpty ?? false)
            ? _extension?.replaceAll(' ', '').split(',')
            : null,
      ))
          ?.files;
    } on PlatformException catch (e) {
      _logException('Unsupported operation' + e.toString());
    } catch (e) {
      _logException(e.toString());
    }
    if (!mounted) return;
    setState(() {
      _isLoading = false;
      _fileName =
          _paths != null ? _paths!.map((e) => e.name).toString() : '...';
      _userAborted = _paths == null;
    });
  }

  void _logException(String message) {
    print(message);
    _scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    _scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void _resetState() {
    if (!mounted) {
      return;
    }
    setState(() {
      _isLoading = true;
      _directoryPath = null;
      _fileName = null;
      _paths = null;
      _saveAsFileName = null;
      _userAborted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cart3 = Provider.of<api_calls>(context);
    bool _flag = true;
    return MaterialApp(
      scaffoldMessengerKey: _scaffoldMessengerKey,
      home: Scaffold(
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
            padding: const EdgeInsets.only(left: 7.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 3.5),
              child: Text(
                'Select Videos to Upload',
                style: TextStyle(
                    fontFamily: 'calibri',
                    color: widget().colorheading,
                    fontSize: widget().headingsize,
                    fontWeight: FontWeight.w800),
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
        key: _scaffoldKey,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Builder(
                    builder: (BuildContext context) => _paths != null
                        ? Column(
                            children: [
                              Container(
                                height: 520,
                                child: ListView.builder(
                                    itemCount:
                                        _paths != null && _paths!.isNotEmpty
                                            ? _paths!.length
                                            : 1,
                                    itemBuilder: (context, index) {
                                      final bool isMultiPath =
                                          _paths != null && _paths!.isNotEmpty;
                                      final String name =
                                          // '$index: ' +
                                          (isMultiPath
                                              ? _paths!
                                                  .map((e) => e.name)
                                                  .toList()[index]
                                              : _fileName ?? '...');
                                      final filesize = _paths!
                                          .map((e) => e.size)
                                          .toList()[index];
                                      final kb = filesize / 1024;
                                      final mb = kb / 1024;
                                      final size = (mb >= 1)
                                          ? '${mb.toStringAsFixed(2)} MB'
                                          : '${kb.toStringAsFixed(2)} KB';

                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _flag = !_flag;
                                          });
                                        },
                                        child: Container(
                                            height: 120,
                                            width: 400,
                                            margin: const EdgeInsets.only(
                                                left: 15.0,
                                                top: 30.0,
                                                right: 15.0),
                                            padding: const EdgeInsets.all(3.0),
                                            decoration: BoxDecoration(
                                                color: _flag
                                                    ? Colors.white
                                                    : Color.fromRGBO(
                                                        227, 242, 253, 10),
                                                border: Border.all(
                                                  color: _flag
                                                      ? Colors.grey
                                                      : Color.fromRGBO(
                                                          227, 242, 253, 10),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 80,
                                                  width: 90,
                                                  color: Color.fromARGB(
                                                      255, 228, 226, 226),
                                                  child: Center(
                                                    child: Icon(
                                                        Icons
                                                            .video_collection_sharp,
                                                        size: 50,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              7.0),
                                                      child: SizedBox(
                                                        child: Text(
                                                          name,
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                primary: _flag
                                                                    ? Colors
                                                                        .grey
                                                                    : Color
                                                                        .fromRGBO(
                                                                            0,
                                                                            120,
                                                                            213,
                                                                            10),
                                                                shape:
                                                                    CircleBorder(),
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10)),
                                                        child: Icon(
                                                          Icons.add,
                                                          size: 15,
                                                        ),
                                                        onPressed: () {
                                                          setState(() =>
                                                              _flag = !_flag);
                                                        },
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      '$size',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            )),
                                      );
                                    }),
                              ),
                              Container(
                                  child: (double.parse(((_paths!
                                                      .map((e) => e.size)
                                                      .toList()
                                                      .reduce(
                                                          (a, b) => a + b)) /
                                                  1024 /
                                                  1024)
                                              .toStringAsFixed(2)) <=
                                          4)
                                      ? Text(
                                          "Total Size: ${((_paths!.map((e) => e.size).toList().reduce((a, b) => a + b)) / 1024 / 1024).toStringAsFixed(2)} MB / 900 MB")
                                      : Text(
                                          "Total Size: ${((_paths!.map((e) => e.size).toList().reduce((a, b) => a + b)) / 1024 / 1024).toStringAsFixed(2)} MB / 900 MB")),
                            ],
                          )

                        //  Container(
                        //     padding: const EdgeInsets.only(bottom: 30.0),
                        //     height: MediaQuery.of(context).size.height * 0.50,
                        //     child: Scrollbar(
                        //         child: ListView.separated(
                        //       itemCount: _paths != null && _paths!.isNotEmpty
                        //           ? _paths!.length
                        //           : 1,
                        //       itemBuilder: (BuildContext context, int index) {
                        //         final bool isMultiPath =
                        //             _paths != null && _paths!.isNotEmpty;
                        //         final String name = '$index: ' +
                        //             (isMultiPath
                        //                 ? _paths!
                        //                     .map((e) => e.name)
                        //                     .toList()[index]
                        //                 : _fileName ?? '...');
                        //         final filesize =
                        //             _paths!.map((e) => e.size).toList()[index];
                        //         final kb = filesize / 1024;
                        //         final mb = kb / 1024;
                        //         final size = (mb >= 1)
                        //             ? '${mb.toStringAsFixed(2)} MB'
                        //             : '${kb.toStringAsFixed(2)} KB';
                        //         return ListTile(
                        //           title: Text(
                        //             name,
                        //           ),
                        //           subtitle: Text('$size'),
                        //         );
                        //       },
                        //       separatorBuilder:
                        //           (BuildContext context, int index) =>
                        //               const Divider(),
                        //     )),
                        //   )

                        : SizedBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Center(
                      child: Container(
                        height: widget().height,
                        width: widget().width,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Color.fromRGBO(22, 97, 207, 10),
                          child: Text(
                            _multiPick ? 'Pick files' : 'Pick file',
                            //  'Add Selected Videos',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.white,
                              fontSize: widget().fontsize,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            setState(() {
                              _paths = null;
                            });
                            _pickFiles();
                            // Navigator.push(
                            //   context,
                            //   CupertinoPageRoute(
                            //       builder: (context) =>
                            //           Select_Shipping_address_Screen()),
                            // );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 15),
                    child: Container(
                        child: (double.parse(((_paths!
                                            .map((e) => e.size)
                                            .toList()
                                            .reduce((a, b) => a + b)) /
                                        1024 /
                                        1024)
                                    .toStringAsFixed(2)) <=
                                4)
                            ? Container(
                                height: widget().height,
                                width: widget().width,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: Color.fromRGBO(22, 97, 207, 10),
                                  child: Text(
                                    "Next",
                                    //  'Add Selected Videos',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      fontSize: widget().fontsize,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            : Container(
                                height: 50,
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                ),
                                child: Center(
                                    child: Text(
                                  "Warning! Total files size must be lower then 900 Mbs",
                                  style: TextStyle(color: Colors.white),
                                )),
                              )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
