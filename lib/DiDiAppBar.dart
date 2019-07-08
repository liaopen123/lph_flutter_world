import 'package:flutter/material.dart';

class DiDiAppBar extends StatefulWidget {
  @override
  _DiDiAppBar createState() => _DiDiAppBar();
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choice = <Choice>[
  Choice(title: '自驾', icon: Icons.directions_car),
  Choice(title: '自行车', icon: Icons.directions_bike),
  Choice(title: '乘船', icon: Icons.directions_boat),
  Choice(title: '公交车', icon: Icons.directions_bus),
  Choice(title: '火车', icon: Icons.directions_railway),
  Choice(title: '步行', icon: Icons.directions_walk),
];

class _DiDiAppBar extends State<DiDiAppBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("My Fancy Dress"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.playlist_play),
              tooltip: "Air fit",
            ),
            IconButton(
              icon: Icon(Icons.playlist_play),
              tooltip: "Air fit",
            ),
            IconButton(
              icon: Icon(Icons.playlist_play),
              tooltip: "Air fit",
            ),
            PopupMenuButton<Choice>(
              itemBuilder: (BuildContext context) {
                return choice
                    .skip(2)
                    .map<PopupMenuItem<Choice>>((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Container(
          child: Text("爱你~😙"),
        ),
        bottomNavigationBar:Container(

          child:Row(
            children: <Widget>[
              Text("你") ,
              Text("比") ,
              Text("从") ,
              Text("前") ,
              Text("快") ,
              Text("乐") ,
              Text("1") ,
            ],
          )
        )

      ),
    );
  }
}
