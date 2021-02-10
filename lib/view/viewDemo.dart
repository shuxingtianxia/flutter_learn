import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 引入数据
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

// 网格布局（）
class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder (BuildContext context, int index) {
    return Container(
      child: Image(
        image: NetworkImage('${imgList[index]['url']}'),
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: imgList.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        maxCrossAxisExtent: 150,
      ),
      itemBuilder: _gridItemBuilder,
    );
  }
}


// 网格布局（）
class GridViewDemo extends StatelessWidget {
  List<Widget> _gridView(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[600],
        alignment: Alignment.center,
        child: Text('Item $index', style: TextStyle(color: Colors.white, fontSize: 20),),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // 页面可以左右滑动
    return GridView.count(
      // 每行显示的数量
      crossAxisCount: 2,
      // 主轴的边距
      mainAxisSpacing: 20.0,
      // 副轴的边距
      crossAxisSpacing: 10.0,
      children: _gridView(100),
    );
  }
}


class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // 可以拖动页面显示一半 true就是显示整个页面，false是拖动到哪里页面显示到哪里
      // pageSnapping: false,
      // 页面反转
      // reverse: true,
      // 页面的方向，vertical是垂直方向， horizontal是水平方向（默认）
      scrollDirection: Axis.vertical,
      // 翻页的时候触发的事件，index是页面的索引，从0开始
      onPageChanged: (index) => print('page: $index'),
      controller: PageController(
        // 页面可视区域
          viewportFraction: 0.8,
          // 默认的页面，默认值是0
          initialPage: 0,
          keepPage: false
      ),
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.grey[900],
          child: Text('ONE', style: TextStyle(fontSize: 32, color: Colors.white),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange[900],
          child: Text('TWO', style: TextStyle(fontSize: 32, color: Colors.white),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.lightBlueAccent,
          child: Text('THREE', style: TextStyle(fontSize: 32, color: Colors.white),),
        ),
      ],
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      // 纵向排列
      scrollDirection: Axis.vertical,
      itemCount: imgList.length,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            SizedBox.expand(
              child: Image(
                image: NetworkImage('${imgList[index]['url']}'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text('${imgList[index]['name']}', style: TextStyle(color: Colors.white, fontSize: 20),),
            )
          ],
        );
      },
    );
  }
}


