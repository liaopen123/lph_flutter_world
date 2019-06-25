import 'package:flutter/material.dart';

/// Flutter中通过Wrap和Flow来支持流式布局
class FlowDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(title:Text("流式布局")),
            body:Container(
                color: Colors.indigoAccent,
              child: Wrap(
                  alignment:WrapAlignment.center,
                children: <Widget>[
                  Text("你比从前快乐，少了这份守候，你不难过，你比从前快乐。"*3),

                  Chip(
                    avatar:  CircleAvatar(backgroundColor: Colors.blue,child: Text("A"),),
                    label: Text('Hamilton'),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.red,child: Text("B"),),
                    label: Text("bibiji"),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.yellow,child: Text("L"),),
                    label: Text("LiaoPenghui"),
                  ),
                  Chip(
                    avatar: CircleAvatar(backgroundColor: Colors.cyanAccent,child: Text("X"),),
                    label: Text("Xuegao"),
                  ),
                ],
              ),
            ),
        )



    );
  }

}