import 'package:flutter/material.dart';
class PaddingDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title :Text("Padding")),
        body: Container(
          child: Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),child: Container(
            color: Colors.red,
            child: Padding(padding: EdgeInsets.all(20),child: Container(
              color: Colors.green,
              child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),child: Container(
                color: Colors.cyanAccent,
                child: Padding(padding: EdgeInsets.only(top: 20,left: 20),child: Container(
                  color: Colors.indigo,
                ),),
              ),),
            ),),
          ),),
        ),
      ),
    );
  }
  
}