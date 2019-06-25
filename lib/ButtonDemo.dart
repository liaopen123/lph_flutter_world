import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget{




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
                RaisedButton(
                  child: Text("raisedButton"),
                  onPressed: ()=>{},
                  color: Colors.blue,
                  disabledColor: Colors.lightGreenAccent,
                  highlightColor: Colors.deepOrange,
                  splashColor: Colors.yellow,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                ),
                FlatButton(
                  child: Text("raisedButton"),
                  onPressed: ()=>{},
                ),
                OutlineButton(
                  child: Text("OutlineButton"),
                  onPressed: ()=>{},
                ),
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: ()=>{},
                ),

              ],

            ),
          )
      ),
    );
  }


}