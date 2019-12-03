import 'package:flutter/material.dart';

//灵活的垂直布局
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "垂直布局",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("垂直布局"),
        ),
        body: Center(
          child: Column(
            //主轴对齐(纵向)
            mainAxisAlignment: MainAxisAlignment.center,
            //副轴对齐
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Text("我是第一个自元素啊adadadadadada"),
              //灵活布局中间的元素撑满,上线各一个
              Expanded(child: new Text("我是第二个子元素啊")),
              new Text("我是第三个子元素啊dad")
            ],
          ),
        ),
      ),
    );
  }
}
