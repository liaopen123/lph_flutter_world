import 'package:flutter/material.dart';


class RatingView extends StatefulWidget{

  @override
  _RatingView createState() => _RatingView();



}

class _RatingView extends State<RatingView>{

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          Row(
            children: <Widget>[
              Icon(Icons.star,color: Colors.green[500],),
              Icon(Icons.star,color: Colors.green[500],),
              Icon(Icons.star,color: Colors.green[500],),
              Icon(Icons.star,color: Colors.black,),
              Icon(Icons.star,color: Colors.black,),
            ],
          ),
          Text("170 Reviews",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),

        ],
      ),
    );
  }
}