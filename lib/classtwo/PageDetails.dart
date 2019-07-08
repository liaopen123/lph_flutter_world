import 'package:flutter/material.dart';

class PageDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Top Lakes"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset("images/lake.jpg",width: 200,height: 200,),
          ],
        ),
      ),
    );
  }
}
