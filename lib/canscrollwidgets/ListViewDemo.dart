import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//
//    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(title: Text("ListView"),),
//        body: Container(
//          child: ListView(
//            children: str.split("").map((item)=>Text(item,textScaleFactor: 2.0,)).toList(),
//
//
//          ),
//
//
//        ),
//      ),
//    );
//  }

//  @override
//  Widget build(BuildContext context) {
//
//    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(title: Text("ListView"),),
//        body: Container(
//          child: ListView.builder(itemCount:100,itemExtent: 250, //强制高度 50
//              itemBuilder: (BuildContext context,int index){
//            return ListTile(title: Text("$index"),);
//          })
//
//
//        ),
//      ),
//    );
//  }


  @override
  Widget build(BuildContext context) {



    //定义下划线
    var divider1 = Divider(color: Colors.blue,);
    var divider2 = Divider(color: Colors.green,);
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView"),),
        body: Container(
          child: ListView.separated(itemCount:100,
              separatorBuilder: (BuildContext context,int  index){
              return index%2 ==0?divider1:divider2;
              },
              itemBuilder: (BuildContext context,int index){
            return ListTile(title: Text("$index"),);
          })


        ),
      ),
    );
  }
}