import 'package:flutter/material.dart';
import './pruducts.dart';
import './product_control.dart';

class ProductMananger extends StatefulWidget {
  String startingProduct;

  ProductMananger(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductMananger> {
  final List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: ProductControl(_addProduct)
            ),
            Products(_products)            
        ],) ;
  }
}