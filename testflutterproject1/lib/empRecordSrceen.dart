import 'package:testflutterproject1/attandanceSrceen.dart';
import 'package:testflutterproject1/employeeListScreen.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'emp.dart';

class empRecordScreen extends StatefulWidget {
  empRecordScreen(String name);
  @override
  State<empRecordScreen> createState() => _empRecordScreenState();
}

class _empRecordScreenState extends State<empRecordScreen> {
  String displayName = "";
  Employee emp = Employee();
  HomeDesign inputEmp = HomeDesign();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Attandance Checking System Main Page"),
        ),
        body: Container(
            child: Column(
          //
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome!${displayName}",
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Here is the menu:",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          child: Text("1.Employee List",
                              style: TextStyle(fontSize: 30)),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return employeeListScreen();
                            }));
                            //navigate user to check employee list
                          },
                        ),
                        GestureDetector(
                          child: Text("2.Take attandance",
                              style: TextStyle(fontSize: 30)),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return takeAttendanceSrceen();
                            }));
                          },
                        )
                      ]),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Column(children: [
                    Text("Go Back"),
                  ]))
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "press the menu to select the action",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ],
        )));
  }
}

/*
 Container(
          color: Colors.red,
          child: Column(
            children: [
              Text(
                "Welcome!",
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Column(children: [
                    Text("Go Back"),
                  ]))
            ],
          ),
        )*/
