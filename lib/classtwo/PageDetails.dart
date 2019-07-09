import 'package:flutter/material.dart';

class PageDetails extends StatelessWidget {
  
  Widget titlebar = Container(
    padding: EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text("我在上面，叫爸爸叫爸爸叫爸爸叫爸爸叫爸爸叫爸爸,ok?",style: TextStyle(fontWeight: FontWeight.bold),),
            Text("我在上面，叫爸爸叫爸爸叫爸爸叫爸爸，爱你雪糕",style: TextStyle(color: Colors.grey[500]),),
          ],
        ),
    ),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text("41"),
        
      ],
    ),
  );



  @override
  Widget build(BuildContext context) {




    Column buildVerticalIcon(IconData icon,String tag){
      Color color = Theme.of(context).primaryColor;
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon,color: color,),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(tag,style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),) ,
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //这个属性 决定了row之间进行等分
        children: <Widget>[
          buildVerticalIcon(Icons.call,"CALL"),
          buildVerticalIcon(Icons.near_me,"ROUTE"),
          buildVerticalIcon(Icons.share,"share"),
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Top Lakes"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset("images/lake.jpg",width: 600,height: 240,),
            titlebar,
            buttonSection,
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child:Text("images imagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimagesimages",style: TextStyle(color: Colors.grey),)
              ,
            ),
          ],
        ),
      ),
    );
  }
}
