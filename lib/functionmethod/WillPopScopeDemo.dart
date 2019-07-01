import 'package:flutter/material.dart';

class WillPopScopeDemo extends StatefulWidget{
  @override
  _WillPopScopeDemo createState() => new _WillPopScopeDemo();


}

class _WillPopScopeDemo  extends State<WillPopScopeDemo>{
  DateTime _lastPressedAt; //上次点击的时间


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        if(_lastPressedAt ==null||DateTime.now().difference(_lastPressedAt)>Duration(seconds: 1)){
          //两次间隔超过1s则重新计时
          _lastPressedAt = DateTime.now();
          return false;
        }
        return false;
      },
        child: Container(
          child: Text("1秒内连续按两次返回键退出",textDirection: TextDirection.ltr,),
        )
    );
  }

}