import 'package:flutter/material.dart';

// 引入首页
import 'home/MyHomePage.dart';

import 'sliver/MySliverGrid.dart';

// 定义入口函数
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 去掉右侧debug的图标
      debugShowCheckedModeBanner: false,
      title: '猫眼影院',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // 按下的背景颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        // 按下的颜色
        splashColor: Colors.red,
      ),
      // home: MyHomePage(),
      home: MySliverGrid(),
    );
  }
}
