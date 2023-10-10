import 'package:flutter/material.dart';
import 'empRecordSrceen.dart';
import 'prog.dart';
import 'emp.dart';

void main() => runApp(MaterialApp(home: HomeDesign()));

class HomeDesign extends StatelessWidget {
  Employee emp = Employee();
  TextEditingController nameTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Welcome to Attandance Checking System!"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Image.asset(
            "assets/img/icon.jpg",
            height: 200,
            width: 200,
          ),
          Text(
            "Enter the name:",
            style: TextStyle(fontSize: 30),
          ),
          Text(""),
          Text(""),
          TextField(
            controller: nameTEC,
            style: TextStyle(fontSize: 30),
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: Name().toString()),
          ),
          ElevatedButton(
              onPressed: () {
                var empName = nameTEC.text; //get name from user input
                emp.name = emp.setEmployeeName(empName);

                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return empRecordScreen(empName: empName);
                }));
              },
              child: Text("search"))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
