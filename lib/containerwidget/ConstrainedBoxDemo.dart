import 'package:flutter/material.dart';



class ConstrainedBoxDemo extends StatelessWidget{


  Widget redBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ConstrainedBoxDemo")),
        body:Column(
          children: <Widget>[
            ConstrainedBox(constraints: BoxConstraints(minHeight: 50,minWidth: double.infinity),
              child: Container(
                height: 5,
                child: redBox,
              ),),
        Container(
          height: 30,
        ),
            SizedBox(
              width: 80,
              height: 80,
              child: redBox,
            ),
          ],
        )




      ),
    );
  }

}



