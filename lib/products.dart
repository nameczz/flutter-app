import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  //Constructor
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      // 需要在pubspec.yaml里，先设置图片路径才可以引入
                      Image.asset('assets/img/banner.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
