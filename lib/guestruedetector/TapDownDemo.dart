import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text("你坐下！"),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      onLongPress: (){
        final snackbar = SnackBar(
          content: Text("长按了！"),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: new Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(10)),
        child: Text("测试按钮"),
      ),
    );
  }
}

class TapDownDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("按下处理的demo"),
        ),
        body: new Center(
          child: MyButton(),
        ),
      ),
    );
  }
}
