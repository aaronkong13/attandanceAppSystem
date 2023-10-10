//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testflutterproject1/attdRecord.dart';
//import 'package:date_format/date_format.dart';

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
                "Press the button to take the attendance\n",
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
                      output = "               Successful!                  \n";
                      time = attdRec.getTime();
                      date = attdRec.getDate();
                      print(date);
                      print(time);
                    });
                  }
                },
                child: Icon(Icons.check), // Use an icon for the button
              ),
              SizedBox(height: 10.0, width: 10.0), // Add some spacing
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 1.0, // Border width
                  ),
                  borderRadius:
                      BorderRadius.all(Radius.circular(10.0)), // Border radius
                ),
                child: Text(
                  output,
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              Container(
                child: Text("ATTEND TIME:\n", style: TextStyle(fontSize: 40)),
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      date,
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  time,
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ],
          ),
        ));
  }
}
