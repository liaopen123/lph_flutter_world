import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar:AppBar(
            title: Text("Image合集"),
          ),
          body:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Image(
//                  image: AssetImage("images/ic_launcher1.png"),
//                  width: 100.0,
//                ),
//                Image.asset("iamges/ic_launcher1.png",width: 100.0),
                Image(image:NetworkImage("https://www.baidu.com/img/bd_logo1.png?where=super"),width: 100.0,fit: BoxFit.fill,),

              ],

            ),
          )
      ),
    );
  }


}