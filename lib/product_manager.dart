import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  // StatefulWidget => state 里到数据可以改变，widget里需要是final

  final String startingProduct;
  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  // 在build之前执行
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _products.add(widget.startingProduct);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0), child: ProductsControl(_addProduct)),
        Expanded(child: Products(_products))
      ],
    );
  }
}
