import 'package:flutter/material.dart';

class Row1Demo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }




}


class MyHome extends StatefulWidget{
  @override
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<MyHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("row")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset("images/pic1.jpg", width: 100,height: 100,),
          Image.asset("images/pic2.jpg", width: 100,height: 100,),
          Image.asset("images/pic3.jpg", width: 100,height: 100,),


        ],
      ),

    );
  }

}