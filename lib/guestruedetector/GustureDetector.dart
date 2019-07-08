import 'package:flutter/material.dart';

class GustureDetector extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("click事件的监听"),),
        body: GestureDetector(
          onTap: (){
            print("button was Clicked");
          },
          child:Container(
            height: 36,
            padding:EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.lightGreen[500],
            ),
            child: Center(
              child: Text("Engage"),
            ),
          ),
        ),
      ),
    );
  }




}