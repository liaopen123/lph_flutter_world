import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lph_flutter_world/classtwo/row_and_column/RatingView.dart';

class RecipeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SvgPicture close = new SvgPicture.asset(
      "images/yungu.svg",
    );

    Widget title = Text(
      "Starwberry Pavlova",
      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 36),
    );

    Widget description =
        Container(padding: EdgeInsets.symmetric(vertical: 10), child:   SizedBox(
          width: 100,
          height: 100,
          child: close,
        ));

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
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  "images/pic1.jpg",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
