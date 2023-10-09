import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testflutterproject1/attdRecord.dart';

class takeAttendanceSrceen extends StatefulWidget {
  const takeAttendanceSrceen({super.key});

  @override
  State<takeAttendanceSrceen> createState() => _takeAttandanceSrceenState();
}

class _takeAttandanceSrceenState extends State<takeAttendanceSrceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Take attadance"),
      ),
      body: Container(
        child: Row(children: [
          Text("Press the button to take the attandance",
              style: TextStyle(fontSize: 20)),
          Row(children: [
            FloatingActionButton(onPressed: () {
              AttendanceRecord attdRec = AttendanceRecord();
              int takeCount = attdRec.takeAttandance();
              print("Succesful to take the attendance:$takeCount");
            }),
          ]),
        ]),
      ),
    );
  }
}
