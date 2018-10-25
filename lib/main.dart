import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(MyApp());

// StatefulWidget: 需要更改内部数据
// StatelessWidget: 内部数据无需改变
class MyApp extends StatelessWidget {
  // 每个必须包含build方法，flutter会自动执行
  // StatelessWidget的子类必须重写build方法
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Welcome to Flutter'),
            ),
            body: ProductManager('Food Tester')));
  }
}
