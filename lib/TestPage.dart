import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "我是标题",
              style: TextStyle(
                fontSize: 20,
                color: Colors.yellow,
              ),
            ),
          ),
          body: Center(
            child: Container(
              child: Image.network("https://www.baidu.com/img/bd_logo1.png"),
              width: 300,
                height: 300,
              decoration: BoxDecoration(),
            ),
          )),
    );
  }
}
