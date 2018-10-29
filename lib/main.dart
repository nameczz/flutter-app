import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './pages/home.dart';

void main() {
  // debugPaintSizeEnabled = true; // 布局线框
  // debugPaintBaselinesEnabled = true; //
  // debugPaintPointersEnabled = true; // 查看事件有没有绑定到buttong之类的。
  runApp(MyApp());
}

// StatefulWidget: 需要更改内部数据
// StatelessWidget: 内部数据无需改变
class MyApp extends StatelessWidget {
  // 每个必须包含build方法，flutter会自动执行
  // StatelessWidget的子类必须重写build方法
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        // debugShowMaterialGrid: true, // 网格
        title: 'Welcome to Flutter',
        home: HomePage());
  }
}
