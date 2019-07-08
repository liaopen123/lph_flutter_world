import 'package:flutter/material.dart';

import 'TextDemo.dart';
import 'guestruedetector/GustureDetector.dart';

class ImageDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        Image.asset("iamges/ic_launcher.png",width: 100.0),
//        Image(image:NetworkImage("https://www.baidu.com/img/bd_logo1.png?where=super"),width: 100.0,fit: BoxFit.fill,),
//        RaisedButton(
//          child: Text("跳转到🔍页面",textDirection:TextDirection.ltr ,),
//          onPressed: (){
//            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TextDemo()));
//          },
//
//        ),
      GustureDetector(),
      ],
    );
  }

}