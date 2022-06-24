import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:untitled/provider/widgets.dart';
import 'package:untitled/screens/Dashboard_screens/Drawer.dart';
import 'package:untitled/screens/Shipping_Address_Screens/Select_Shipping_Address.dart';
import 'package:untitled/screens/cart/cart_Screen.dart';
import 'package:untitled/screens/disc_create/Select_video.dart';
import 'package:untitled/screens/disc_create/widget.dart';
import 'package:video_player/video_player.dart';

class select_videos_screen extends StatefulWidget {
  const select_videos_screen({Key? key}) : super(key: key);

  @override
  _select_videos_screenState createState() => _select_videos_screenState();
}

class _select_videos_screenState extends State<select_videos_screen> {
  List vehicleimagesGal = [];
  VideoPlayerController? _videoPlayerController;
  File? _video;
  final picker = ImagePicker();

  pickVideoGal() async {
    XFile? video = await picker.pickVideo(source: ImageSource.gallery);
    _video = File(video!.path);

    _videoPlayerController = VideoPlayerController.file(_video!)
      ..initialize().then((_) {
        setState(() {
          vehicleimagesGal.add(_video);
        });
      });
    setState(() {
      // ignore: unnecessary_statements
      vehicleimagesGal.add(_video);
      ;
    });
    _videoPlayerController!.pause();
  }

  @override
  Widget build(BuildContext context) {
    bool _flag = true;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 520,
              child: ListView.builder(
                  itemCount: vehicleimagesGal.length,
                  itemBuilder: (BuildContext context, int index) {
                    return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return GestureDetector(
                        onTap: () => setState(() => _flag = !_flag),
                        child: Container(
                            height: 100,
                            width: 400,
                            margin: const EdgeInsets.only(
                                left: 15.0, top: 30.0, right: 15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: _flag
                                    ? Colors.white
                                    : Color.fromRGBO(227, 242, 253, 10),
                                border: Border.all(
                                  color: _flag
                                      ? Colors.grey
                                      : Color.fromRGBO(227, 242, 253, 10),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (_video != null)
                                  _videoPlayerController!.value.isInitialized
                                      ? Container(
                                          height: 80,
                                          width: 120,
                                          child: AspectRatio(
                                              aspectRatio:
                                                  _videoPlayerController!
                                                      .value.aspectRatio,
                                              child: VideoPlayer(
                                                  _videoPlayerController!)),
                                        )
                                      : Container()
                                else
                                  Container(
                                    height: 80,
                                    width: 120,
                                    color: Color.fromARGB(255, 228, 226, 226),
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
                                      height: 30,
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
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: _flag
                                          ? Colors.grey
                                          : Color.fromRGBO(0, 120, 213, 10),
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(10)),
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
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

            // Container(
            //     height: 100,
            //     width: 400,
            //     margin:
            //         const EdgeInsets.only(left: 15.0, top: 30.0, right: 15.0),
            //     padding: const EdgeInsets.all(3.0),
            //     decoration: BoxDecoration(
            //         color: _flag
            //             ? Colors.white
            //             : Color.fromRGBO(227, 242, 253, 10),
            //         border: Border.all(
            //           color: _flag
            //               ? Colors.grey
            //               : Color.fromRGBO(227, 242, 253, 10),
            //         ),
            //         borderRadius: BorderRadius.circular(10)),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         if (_video != null)
            //           _videoPlayerController!.value.isInitialized
            //               ? Container(
            //                   height: 80,
            //                   width: 120,
            //                   child: AspectRatio(
            //                       aspectRatio:
            //                           _videoPlayerController!.value.aspectRatio,
            //                       child: VideoPlayer(_videoPlayerController!)),
            //                 )
            //               : Container()
            //         else
            //           Container(
            //             height: 80,
            //             width: 120,
            //             color: Color.fromARGB(255, 228, 226, 226),
            //           ),
            //         Column(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.all(7.0),
            //               child: Text(
            //                 'Video testing 01',
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 15,
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               height: 30,
            //             ),
            //             Text(
            //               '64.00 MB',
            //               style: TextStyle(
            //                 color: Colors.grey,
            //                 fontSize: 15,
            //               ),
            //             ),
            //           ],
            //         ),
            //         ElevatedButton(
            //           style: ElevatedButton.styleFrom(
            //               primary: _flag
            //                   ? Colors.grey
            //                   : Color.fromRGBO(0, 120, 213, 10),
            //               shape: CircleBorder(),
            //               padding: EdgeInsets.all(10)),
            //           child: Icon(
            //             Icons.add,
            //             size: 15,
            //           ),
            //           onPressed: () {
            //             setState(() => _flag = !_flag);
            //           },
            //         )
            //       ],
            //     )),

            // Container(
            //   height: 520,
            //   child: ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (BuildContext context, int index) {
            //         final catData = _video;
            //         final CatDataController = _videoPlayerController;

            //         return GestureDetector(
            //             onTap: () => setState(() => _flag = !_flag),
            //             child: abc().Abc(
            //               _flag,
            //               () {
            //                 setState(() => _flag = !_flag);
            //               },
            //               _videoPlayerController!.value.isInitialized
            //                   ? AspectRatio(
            //                       aspectRatio:
            //                           _videoPlayerController!.value.aspectRatio,
            //                       child: VideoPlayer(_videoPlayerController!))
            //                   : Container(),
            //               CatDataController,
            //             ));
            //       }),
            // ),
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
                    'Add Selected Videos',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: widget().fontsize,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    pickVideoGal();
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
          ],
        ),
      ),
    );
  }
}
