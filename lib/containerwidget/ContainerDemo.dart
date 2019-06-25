import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Container容器"),),
        body: Container(
          margin: EdgeInsets.only(top: 50,left: 120),
          constraints: BoxConstraints.tightFor(width: 200,height: 150),
          decoration: BoxDecoration(
            gradient:RadialGradient(colors: [Colors.red,Colors.orange[700]],center: Alignment.topLeft,radius: .98),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0,
              ),
            ]
            
          ),
          transform: Matrix4.rotationZ(.2),
          alignment: Alignment.center,
          child: Text("想起来好像昨天 我们初次见面"),
        ),
      ),
    );
  }

}