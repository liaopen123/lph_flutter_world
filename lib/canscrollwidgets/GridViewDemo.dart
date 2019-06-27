import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: AppBar(title: Text("GridViewDemo"),),),
        body: Container(
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 1.0),children: <Widget>[
            Icon(Icons.ac_unit),
            Icon(Icons.airport_shuttle),
            Icon(Icons.all_inclusive),
            Icon(Icons.beach_access),
            Icon(Icons.cake),
            Icon(Icons.free_breakfast),
          ],),

        ),
      ),
    );
  }

}