import 'package:flutter/material.dart';



class SlideDeleteDemo extends StatelessWidget {

  final List<String> items = new List<String>.generate(30, (i)=>"列表项${i+1}");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("欢动删除示例"),
        ),
        body: new Center(
          child: ListView.builder(
              itemCount:items.length ,
              itemBuilder: (context,index){
               var item = items[index];
                return Dismissible(
                  key:new Key(item),
                  onDismissed: (direction){
                    items.removeAt(index);
                    Scaffold.of(context).showSnackBar(new SnackBar(content: Text("gegege")));
                  },
                  child: new ListTile(title: Text("$item"),),
                );
              }),
        ),
      ),
    );
  }
}
