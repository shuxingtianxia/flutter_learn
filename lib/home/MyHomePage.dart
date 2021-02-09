import 'package:flutter/material.dart';

// 首页的主体
import 'MyHomeBody.dart';
import '../layout/Layout.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 控制器，导航和页面的联动效果需要一个控制器去控制
    return DefaultTabController(
      // 控制页面切换的数量，这个数量和页面的数量必须一致
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // 设置顶部阴影
          elevation: 0.0,
          title: Text(
              '猫眼影院'
          ),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}, color: Colors.white,)
          ],
        ),

        // 侧边栏
        drawer: Drawer(
          // 从上到下排列的盒子容器。也可以从左往右排
          child: ListView(
            // 清除padding值
            padding: EdgeInsets.all(0),
            // 尖括号代表数组内每一项规定的数据类型
            children: <Widget>[
              // 侧边头部
              UserAccountsDrawerHeader(
                accountName: Text('Crazy'),
                accountEmail: Text('1823036577@qq.com'),
                // 装饰器
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2509744493,2981818018&fm=26&gp=0.jpg'),
                    // 颜色和图片混合
                    colorFilter: ColorFilter.mode(Colors.blue[200].withOpacity(0.3), BlendMode.hardLight),
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('http://booktianxia.top:6677/1577073206422-QQ%E5%9B%BE%E7%89%8720191223115302.jpg'),
                ),
              ),
              ListTile(title: Text('我的发布', style: TextStyle(fontSize: 16),), trailing: Icon(Icons.send), onTap: () => Navigator.pop(context),),
              ListTile(title: Text('我的收藏', style: TextStyle(fontSize: 16),), trailing: Icon(Icons.feedback), onTap: () => Navigator.pop(context),),
              ListTile(title: Text('系统设置', style: TextStyle(fontSize: 16),), trailing: Icon(Icons.settings), onTap: () => Navigator.pop(context),),
              // 线
              Divider(color: Colors.black38,),
              ListTile(title: Text('注销', style: TextStyle(fontSize: 16),), trailing: Icon(Icons.exit_to_app), onTap: () => Navigator.pop(context),),
            ],
          ),
        ),

        // 页面需要传递到TabBarView，实现联动效果
        body: TabBarView(
          children: [
            MyHomeBody(),
            Layout(),
            Text('page3'),
          ],
        ),

        // 底部
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.black,
          // TabBar 是系统提供的底部导航组件，可以实现与页面联动效果
          child: TabBar(
            // 未选中的颜色
            unselectedLabelColor: Colors.grey[1],
            // 导航栏下边线的长度
            indicatorSize: TabBarIndicatorSize.label,
            // 线条粗细
            indicatorWeight: 1.0,
            labelStyle: TextStyle(
              height: 0.3,
              fontSize: 12
            ),
            tabs: [
              Tab(text: '首页', icon: Icon(Icons.home)),
              Tab(text: '正在热映', icon: Icon(Icons.movie_creation)),
              Tab(text: '影院信息', icon: Icon(Icons.local_movies)),
            ],
          ),
        ),
      ),
    );
  }
}
