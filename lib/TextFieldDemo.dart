import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
          appBar:AppBar(
            title: Text("Button合集"),
          ),
          body:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

              ],

            ),
          )
      ),
    );
  }


}