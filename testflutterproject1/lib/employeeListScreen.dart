import 'package:flutter/material.dart';

class employeeListScreen extends StatefulWidget {
  @override
  State<employeeListScreen> createState() => _employeeListScreenState();
}

class _employeeListScreenState extends State<employeeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go back"),
          ),
        ],
      ),
    ));
  }
}

/*

*/