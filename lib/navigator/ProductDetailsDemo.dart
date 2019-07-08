import 'package:flutter/material.dart';

import 'NavigatorDemo1.dart';

class ProductDetailsDemo extends StatelessWidget {
  final Product product;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: new Container(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            onTap: ()=>Navigator.pop(context,"廖鹏辉最爱雪糕"),
            child: Text("${product.productName}+${product.description}",

          ),
          ),

        ),
      ),
    );
  }

  ProductDetailsDemo({Key key, @required this.product}) : super(key: key);
}
