import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

///在绘前 添加背景 边框 渐变
class DecoratedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DecoratedBoxDemo"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange[700]]),
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2, 2),
                        blurRadius: 4.0,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
                  child: GestureDetector(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: this.showToast,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showToast() {
    Fluttertoast.showToast(msg: "嘎嘎");
  }
}
