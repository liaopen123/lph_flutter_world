import 'package:flutter/material.dart';

import 'NavigatorDemo1.dart';

class ProductDetailsDemo extends StatelessWidget{


  final Product product;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("${product.productName}+${product.description}"),
      ),
    );
  }

  ProductDetailsDemo({Key key,@required this.product}):super(key:key);

}