import 'package:flutter/material.dart';
import './pages/product.dart';
class Products extends StatelessWidget {
  final List<String> products;

  //Constructor
  Products(this.products);
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          // 需要在pubspec.yaml里，先设置图片路径才可以引入
          Image.asset('assets/img/banner.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Show Details'),
                onPressed: ()=> Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => ProductPage()
                )),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // builder 不需要children。会自动删除无用，预加载图片。适合很长的list
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}
