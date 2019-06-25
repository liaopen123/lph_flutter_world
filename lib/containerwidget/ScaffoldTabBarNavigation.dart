import 'package:flutter/material.dart';

import 'drawable/MyDrawer.dart';

class ScaffoldTabBarNavigation extends StatefulWidget{

  @override
  _ScaffoldTabBarNavigation createState() =>_ScaffoldTabBarNavigation();



}


class _ScaffoldTabBarNavigation extends State<ScaffoldTabBarNavigation>{

  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share),onPressed: (){},),
        ],
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.business),title: Text("Business")),
        BottomNavigationBarItem(icon: Icon(Icons.school),title: Text("School")),
      ],
      currentIndex: _selectedIndex,
          fixedColor: Colors.blue,
      onTap: _onItemTapped,),
      floatingActionButton: FloatingActionButton(onPressed: _onAdd,child: Icon(Icons.add),),
    );
  }

  void _onItemTapped(index){
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd(){

  }

}