import 'package:flutter/material.dart';
import 'dart:math' as math;
class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("transform"),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsetsDirectional.only(top: 100),
                color: Colors.black,
                child: Transform(
                  transform: Matrix4.skewY(0.3),
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.deepOrange,
                    child: const Text("你好，雪糕❄️❄️❄❄️❄❄️❄❄️"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Transform.translate(
                    offset: Offset(-20, -5),
                    child: Text("你好，雪糕"),
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 20),
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Transform.rotate(angle: math.pi/2,child: Text("你好雪糕"),)
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20),
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Transform.scale(scale:1.5,child: Text("你好雪糕"),)
                ),
              ),
              
            ],
          )),
    );
  }
}
