import 'package:flutter/material.dart';

class ProductsControl extends StatelessWidget {
  final Function addProduct;

  ProductsControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct({'title': 'Food', 'imgUrl': 'assets/img/banner.jpg'});
      },
      child: Text('Add Product'),
    );
  }
}
