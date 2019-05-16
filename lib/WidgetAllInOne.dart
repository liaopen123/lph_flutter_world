import 'package:flutter/material.dart';
import 'package:lph_flutter_world/CartItem.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  _ShoppingListState createState() => _ShoppingListState();

}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = new Set<Product>();

  void _handlerCartChanged(Product product, bool inCart) {
    if (inCart)
      _shoppingCart.add(product);
    else
      _shoppingCart.remove(product);
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("购物车哦"),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product){
          return new CartItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            cartChangeCallback: _handlerCartChanged,
          );

        }).toList(),
      ),
      
    );
  }
}
