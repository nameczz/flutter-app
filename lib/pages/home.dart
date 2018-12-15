import 'package:flutter/material.dart';
import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: ProductManager({'title': 'First', 'imgUrl': 'assets/img/banner.jpg'}));
  }
}
