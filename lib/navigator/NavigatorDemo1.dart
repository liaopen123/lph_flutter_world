import 'package:flutter/material.dart';

import 'ProductDetailsDemo.dart';


class Product{
  final String productName;
  final String description;

  Product(this.productName, this.description);

}





class NavigatorDemo1 extends StatelessWidget{
  List<Product> ps = List<Product>.generate(20, (index)=>Product("商品名称$index","我是描述$index"));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "传递参数的示例",
      home: ProductList(products:ps),
    );
  }

}


class ProductList extends StatelessWidget{

final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("navigator传参"),),
      body: ListView.builder(itemCount:products.length,itemBuilder: (context,index){
        return new ListTile(
          title: Text(products[index].productName),

          onTap: (){
            Navigator.push(context, new MaterialPageRoute(builder:  (context)=> ProductDetailsDemo(product: products[index])));
          },

        );
      }),
    );
  }

  ProductList({Key key,@required this.products}):super(key:key);

}