import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget{




  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
          appBar:AppBar(
            title: Text("Text合集"),
          ),
          body:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "最喜欢雪糕",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "超级喜欢雪糕,没错就是很喜欢"*3,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, //这个属性和android的类似
//                  style:TextStyle(
//                    fontFamily: "Schyler",
//                  ),
                ),
                Text(
                  "最喜欢雪糕",
                  textScaleFactor: 1.5,
                ),
                Text("雪糕是唯一",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    height: 1.2, //行高因子
                    fontFamily: "Courier",
                    background: Paint()..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                  ),
                ),
                Text.rich(TextSpan(
                    children: [
                      TextSpan(
                        text: "home",
                      ),
                      TextSpan(
                        text: "http://www.baidu.com",
                        style: TextStyle(
                          color: Colors.blue,
                        ),

                      ),
                    ]
                )),
                
                DefaultTextStyle(
                  //1.设置文本默认样式
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.start,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("你好，雪糕"),
                      Text("我是最爱你的辉仔"),
                      Text("超级爱你",style: TextStyle(
                        inherit: true,//表示不继承
                        color: Colors.blue,
                      ),),
                    ],
                  ),
                ),
              ],

            ),
          )
      ),
    );
  }


}