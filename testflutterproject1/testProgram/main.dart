import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomeDesign()));

String getName() {
  return "hi";
}

class HomeDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Welcome to employee page"),
          centerTitle: true,
        ),
        body: Center(child: Text(getName(), style: TextStyle(fontSize: 30))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("click"),
        ));
  }
}
