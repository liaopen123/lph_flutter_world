import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{

const MyDrawer({Key key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(context: context,removeTop: true, child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 38),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipOval(
                    child: Image.network("https://www.baidu.com/img/bd_logo1.png",width: 80,),

                  ),
                ),

                Text("Wendux",style: TextStyle(fontWeight: FontWeight.bold),),

              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.add),
                  title: const Text("Add Account"),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Message Account"),
                ),
              ],
            ),
          ),


        ],
      )),
    );
  }

}