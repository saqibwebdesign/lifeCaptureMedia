import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class abc {
  Abc(ab, xyz, ss, yy) {
    return Container(
        height: 100,
        width: 400,
        margin: const EdgeInsets.only(left: 15.0, top: 30.0, right: 15.0),
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            color: ab ? Colors.white : Color.fromRGBO(227, 242, 253, 10),
            border: Border.all(
              color: ab ? Colors.grey : Color.fromRGBO(227, 242, 253, 10),
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (ss != null) yy else Text("empty"),
            // Container(
            //   height: 70,
            //   width: 120,
            //   color: Colors.grey.shade300,
            //   child: Image.file(
            //     File(ss),
            //     fit: BoxFit.cover,
            //   ),
            // ),
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
                  primary: ab ? Colors.grey : Color.fromRGBO(0, 120, 213, 10),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(10)),
              child: Icon(
                Icons.add,
                size: 15,
              ),
              onPressed: xyz,
            )
          ],
        ));
  }
}
