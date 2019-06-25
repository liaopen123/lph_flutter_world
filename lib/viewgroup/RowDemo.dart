import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center, //内容水平居中
            textDirection:TextDirection.rtl,
          children: <Widget>[
            Text("如果你要离开"),
            Text("你说依赖是我们的阻碍1"),
          ],
        ),
      ),
    );
  }
}
