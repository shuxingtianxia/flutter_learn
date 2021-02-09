import 'package:flutter/material.dart';

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // 背景图片
        image: DecorationImage(
          image: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2509744493,2981818018&fm=26&gp=0.jpg'),
          // 位置
          alignment: Alignment.topCenter,
          // 重复
          repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          // 滤镜
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.6),
            BlendMode.hardLight
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            // 行内多样式
            child: RichText(
              text: TextSpan(
                text: '大家好',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  // 子元素会继承父元素的样式，子元素需要有自己的样式，可以自己定义
                  TextSpan(
                    text: '我叫美女',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(30.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              // 添加边框
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // 添加圆角
              // borderRadius: BorderRadius.all(Radius.circular(16.0)),
              // 投影
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  // 投影偏移位置， （x轴，y轴）
                  offset: Offset(5.0, 3.0),
                  // 投影放大多少
                  spreadRadius: -3.0,
                  // 模糊程度
                  blurRadius: 10.0,
                ),
              ],
              // 变成圆形
              shape: BoxShape.circle,
              // 渐变
              // 圆形渐变
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(255, 0, 165, 1.0),
              //     Color.fromRGBO(0, 0, 165, 1.0),
              //   ]
              // ),
              // 线性渐变
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 0, 165, 1.0),
                  Color.fromRGBO(0, 0, 165, 1.0),
                ],
                // 渐变位置
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // 相当于一个div
          // SizedBox(
          //   width: 200,
          //   height: 100,
          //   child: Container(
          //     child: Icon(Icons.ac_unit, color: Colors.white, size: 60,),
          //     decoration: BoxDecoration(
          //       color: Colors.red
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // SizedBox(
          //   width: 200,
          //   height: 100,
          //   child: Container(
          //     child: Icon(Icons.star_purple500_sharp, color: Colors.white,),
          //     decoration: BoxDecoration(
          //         color: Colors.red
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // 把下面的组件合在一起，最底部的组件在最上面
          Stack(
            alignment: Alignment(-1, -1),
            children: [
              SizedBox(
                width: 300,
                height: 200,
                child: Container(
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 60,),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  child: Icon(Icons.brightness_2, color: Colors.white,),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ]
                    )
                  ),
                ),
              ),
              // 定位组件
              Positioned(
                top: 20,
                right: 20,
                child: Icon(Icons.ac_unit, color: Colors.white),
              ),
            ],
          ),
          // 设置宽高比例的容器
          // AspectRatio(
          //   aspectRatio:  3.0 /2.0,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          // 设置带限制的盒子
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 200
            ),
            child: Container(
              color: Colors.indigoAccent,
            ),
          )
        ],
      ),
    );
  }
}
