import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("层叠布局"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand, //未定位widget占满Stack整个空间
            children: <Widget>[
              Positioned(
                left: 18,
                child: Text("我是爱你的辉仔"),
              ),
              Container(
                child:
                    Text("hello world", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                top: 18,
                child: Text("特别的爱你~"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
