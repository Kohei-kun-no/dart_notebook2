import 'package:flutter/material.dart';
class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test2"),
        ),
        body: Center(
            child: Container(
                color: Colors.greenAccent,
                child: Text("Test2", style: TextStyle(fontSize: 80)))));
  }
}