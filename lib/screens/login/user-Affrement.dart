import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/provider/widgets.dart';

class User_Aggrement_Screen extends StatelessWidget {
  const User_Aggrement_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'User Agreement',
          style: TextStyle(
              fontFamily: 'calibri',
              color: widget().colorheading,
              fontSize: widget().headingsize,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(25),
        padding: EdgeInsets.only(top: 25, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Upon agreeing to LifeCapture Media’s User Agreement,'
                      ' account members agree to upload only their own and personally '
                      'shot video(s) to LifeCapture Media’s server for video transfer to user-specified '
                      'disc format and to the shipping of said video only to a user-specified address.  In so doing,'
                      ' the user asserts that any and all said uploaded video files do not meet any legal standard that'
                      ' would constitute license, copyright or trademark infringement, piracy, bootlegging, surveillance or'
                      ' anything constituting a violation of U.S. privacy rights/laws, material of any sexual or otherwise illicit '
                      'nature, or video(s) that contain any invocation or the advocating of hate, violence, or aggression in any form,'
                      ' or any material that would advance any political or religious narrative.  The user also acknowledges that '
                      'LifeCapture Media reserves the right to refuse to transfer video, or take part in any project that would meet '
                      'the legal standard to be classified as belonging to any category listed here.     ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          textBaseline: TextBaseline.alphabetic),
                    ),
                    // SizedBox(height: 10,),
                    // Text(
                    //     'In so doing, the user asserts that any and all said uploaded video files do not meet any legal standard that would constitute license,copyright or trademark infringement, piracy, bootlegging, surveillance or anything constituting a violation of U.S.',
                    //     textAlign: TextAlign.start,
                    //     style: TextStyle(color: Color.fromRGBO(120, 144, 156, 10),
                    //         fontSize: 15,
                    //         textBaseline: TextBaseline.alphabetic
                    //     )),
                    // SizedBox(height: 10,),
                    // Text(
                    //     'Privacy rights/laws, material of any sexual or otherwise illicit nature, or video(s) that contain any invocation or the advocating of hate, violence, or aggression in any form, or any material that would advance any political or religious narrative.',
                    //     textAlign: TextAlign.start,
                    //     style: TextStyle(color: Color.fromRGBO(120, 144, 156, 10),
                    //         fontSize: 15,
                    //         textBaseline: TextBaseline.alphabetic
                    //     )),
                    // SizedBox(height: 10,),
                    // Text(
                    //      'The user also acknowledges that LifeCapture Media reserves the right to refuse to transfer video, or take part in any project that would meet the legal standard to be classified as belonging to any category listed here.' ,
                    //     textAlign: TextAlign.start,
                    //     style: TextStyle(color: Color.fromRGBO(120, 144, 156, 10),
                    //         fontSize: 15,
                    //         textBaseline: TextBaseline.alphabetic
                    //     )),

                    //         Text(
                    //           'Upon agreeing to LifeCapture Media’s User Agreement, account members agree to upload only their own ',
                    //             textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           'Millions of people  daily to explore and',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           'interact with the world in new ways. our',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           'Service include :',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Center(
                    //   child: Container(
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Text(
                    //           ' Goggle apps,sites,device like ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' search,youtube,and Google home',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 10,
                    //         ),
                    //         Text(
                    //           ' Platform like the chrome browser and',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' Android Operating System',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 10,
                    //         ),
                    //         Text(
                    //           ' Product that are integrated into third - ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' party apps and sites ,like ads and ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' embedded Goggle Maps ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 25,
                    // ),
                    // Center(
                    //   child: Container(
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       children: [
                    //         Text(
                    //           'We want you to understand the types of ',
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           'information we colect as you use our',
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           'Services',
                    //           style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           height: 20,
                    //         ),
                    //         Text(
                    //           ' we Collect information to provide better ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' services to all our user -from figuring out ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' basic staff like which language you speak to ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' more complex thing like which ads you find ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' most useful,the people who matter most to ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' you online,or which youtube videos you ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(' might like ', style: TextStyle(
                    //           color: Color.fromRGBO(120, 144, 156, 10),
                    //         ),),
                    //         SizedBox(
                    //           height: 20,
                    //         ),
                    //         Text(
                    //           ' the information goggle collects,and how',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           'that information is used ,depends on how you ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(
                    //           ' used our services and how you manage your ',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(120, 144, 156, 10),
                    //           ),
                    //         ),
                    //         Text(' privacy controls.', style: TextStyle(
                    //           color: Color.fromRGBO(120, 144, 156, 10),
                    //         ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
