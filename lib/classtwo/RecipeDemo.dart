import 'package:flutter/material.dart';
import 'package:lph_flutter_world/classtwo/row_and_column/RatingView.dart';

class RecipeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget title = Text(
      "Starwberry Pavlova",
      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 36),
    );

    Widget description = Container(
      padding: EdgeInsets.symmetric(vertical: 10),
        child:Text("""
       如果说了后悔 是不是一切就能倒退
　　回忆多么美 活着多么狼狈
　　为什么这个世界 总要叫人尝伤悲
　　我不能了解 也不想了解
　　我好想好想飞 逃离这个疯狂世界
　　那么多苦那么多累 那么多莫名的泪水
　　我好想好想飞 逃离这个疯狂的世界
　　如果是你发现了我 也别将我挽回
　　想了你一整夜 再也想不起你的脸
　　你是一种感觉 写在夏夜晚风里面""")
    );

    Widget timeBlockItem(IconData icon, String des, String time) {
      return Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.green,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              des,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Text(
            time,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      );
    }

    Widget TimeSection() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          timeBlockItem(Icons.book, "PREP:", "25 min"),
          timeBlockItem(Icons.timer, "COOK:", "1 hr"),
          timeBlockItem(Icons.kitchen, "FEEDS:", "4-6"),
        ],
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Starwberray Pavlova Recipe"),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
            flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  title,
                  description,
                  RatingView(),
                  TimeSection(),
                ],
              ),
        ),
            Expanded(

              flex: 2,
            child:  Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset("images/pic1.jpg", ),
            ),

            ),
          ],
        ),
      ),
    );
  }
}
