import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("singleChildScrollview"),),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: str.split("").map((c)=>Text(c,textScaleFactor: 2.0,)).toList(),
            ),

          ),
        ),
      ),
    );
  }

}