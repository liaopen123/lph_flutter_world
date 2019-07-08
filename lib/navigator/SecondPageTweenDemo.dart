import 'package:flutter/material.dart';

import 'NavigatorDemo1.dart';

class ProductDetailsDemo extends StatelessWidget {
  final Product product;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Hero(tag: "第一张图片", child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563176711&di=1947baa49193cd089382a47663059c0e&imgtype=jpg&er=1&src=http%3A%2F%2Fuploads.5068.com%2Fallimg%2F1801%2F162-1P1021GU7.jpg")),
      ),
    );
  }

  ProductDetailsDemo({Key key, @required this.product}) : super(key: key);

  
}
