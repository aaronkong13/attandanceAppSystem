import 'package:flutter/material.dart';
//import 'package:testflutterproject1/emp.dart';

class employeeListScreen extends StatefulWidget {
  @override
  State<employeeListScreen> createState() => _employeeListScreenState();
}

class _employeeListScreenState extends State<employeeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee List"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(
                "Lee Saw Loy",
                style: TextStyle(fontSize: 30),
              ),
            ]),
            Text(
              "Lim Kok Lin",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Low Jun Wei",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Yong Weng Kai",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Jayden Lee",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Kong Kah Yan",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Jasmine Lau",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Chan Saw Lin",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back"),
            ),
          ],
        ),
      ),
    );
  }
}

/*

*/
