import 'package:flutter/material.dart';
import './product_mananger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyListDemo'),
        ),
        body: ProductMananger('Food tester')
      ),
    );
  }
}