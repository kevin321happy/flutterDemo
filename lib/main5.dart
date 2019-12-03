import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//ListView横向列表
//Flutter中万物皆组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "你好啊",
      home: Scaffold(
          appBar: new AppBar(
            title: new Text("ListView02"),
          ),
          body: Center(
            child: Container(
              height: 200.0,
              child: HListView(),
            ),
          )),
    );
  }
}

//所有的组件都是继承静态组件StatelessWidget
class HListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,//指定为横向滑动
      children: <Widget>[
        new Container(
          child: Text("绿色",textAlign: TextAlign.center,),
          width: 180.0,
          color: Colors.pink,
        ),
        new Container(
          child: Text("黄色",textAlign: TextAlign.center),
          width: 180.0,
          color: Colors.deepOrange,
        ), new Container(
          child: Text("红色",textAlign: TextAlign.center,),
          width: 180.0,
          color: Colors.amber,
        ), new Container(
          child: Text("黑色",textAlign: TextAlign.center,),
          width: 180.0,
          color: Colors.black,
        )
//                  new Image.network("https://jspang.com/images/xiaomiquan.png",width: 100.0,height: 40.0,),
//                  new Image.network("https://jspang.com/images/bibidao.jpg",width: 100.0,height: 40.0,),
//                  new Image.network("https://jspang.com/images/react_blog_demo.jpg",width: 100.0,height: 40.0,),
//                  new Image.network("https://jspang.com/images/next_blog.jpg",width: 100.0,height: 40.0,)
      ],
    );
  }
}
