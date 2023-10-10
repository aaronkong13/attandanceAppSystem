import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testflutterproject1/attdRecord.dart';
import 'package:date_format/date_format.dart';

class takeAttendanceSrceen extends StatefulWidget {
  const takeAttendanceSrceen({super.key});

  @override
  State<takeAttendanceSrceen> createState() => _takeAttandanceSrceenState();
}

class _takeAttandanceSrceenState extends State<takeAttendanceSrceen> {
  String output = "";
  String date = "";
  String time = "";
  int takeAttdCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Take attadance"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Press the button to take the attendance",
                style: TextStyle(fontSize: 20),
              ),
              FloatingActionButton(
                onPressed: () {
                  AttendanceRecord attdRec = AttendanceRecord();
                  int takeCount = attdRec.takeAttandance();
                  int previousCount = takeCount - 1;

                  print("Successful to take the attendance: $takeCount times");

                  if (takeCount > previousCount) {
                    setState(() {
                      output = "Successful to take attendance.\n";
                      time = attdRec.getTime();
                      date = attdRec.getDate();
                    });
                  }
                },
                child: Icon(Icons.check), // Use an icon for the button
              ),
              SizedBox(height: 10.0, width: 10.0), // Add some spacing
              Text(output, style: TextStyle(fontSize: 30.0)),
              Text(date, style: TextStyle(fontSize: 30.0)),
              Text(time, style: TextStyle(fontSize: 30.0))
            ],
          ),
        ));
  }
}
