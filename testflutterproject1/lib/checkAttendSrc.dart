import 'package:flutter/material.dart';

class CheckAttdScreen extends StatefulWidget {
  const CheckAttdScreen({super.key});

  @override
  State<CheckAttdScreen> createState() => _CheckAttdScreenState();
}

class _CheckAttdScreenState extends State<CheckAttdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Attendance Checking"),
        ),
        body: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Column(
            children: [
              Text("Current Record:", style: TextStyle(fontSize: 40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Detail:",
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              Row(children: [
                Text(
                  "Name:Chan Saw Lin",
                  style: TextStyle(fontSize: 40),
                ),
              ]),
              Row(children: [
                Text(
                  "Phone Number:016-783239",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),
              Row(children: [
                Text(
                  "Check in time:8:45pm",
                  style: TextStyle(fontSize: 40),
                ),
              ]),
              Row(children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("click"),
                ),
              ]),
              Row(children: []),
            ],
          ),
        ));
  }
}
