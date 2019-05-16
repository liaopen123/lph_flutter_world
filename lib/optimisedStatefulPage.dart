import 'package:flutter/material.dart';



class CountText extends StatelessWidget {
  CountText({this.text});

  final int text;

  @override
  Widget build(BuildContext context) {
    return new Text("$text");
  }
}


class NextButton extends StatelessWidget {
  NextButton({this.callback});

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: callback,
      child: new Text("gogogogo"),
    );
  }
}


class MyCounter extends StatefulWidget {
  @override
  _MyCounter createState() => new _MyCounter();
}

class _MyCounter extends State<MyCounter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new CountText(text: _count),   //这里的属性名称 text 和上面获取的名字保持一致
      new NextButton(callback: _increment),  //这里的属性名称 callback 和上面获取的名字保持一致
    ]);
  }
}
