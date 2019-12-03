import 'package:flutter/material.dart';
//层叠布局
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var stack=new Stack(
      alignment: Alignment(0.5,0.8),//层叠相对位置
      children: <Widget>[
        //"https://i1.hdslb.com/bfs/face/051f7adf94ec095f21596bcf526c19e41f8b9d6a.jpg@72w_72h.webp"
        new CircleAvatar(
          backgroundImage: new NetworkImage('https://jspang.com/images/xiaomiquan.png'),
          radius: 100.0,//圆角度
        ),
        new Container(
          decoration: new BoxDecoration(color: Colors.lightBlue),
          padding: EdgeInsets.all(10.0),
          child: new Text("来了老弟"),
        )
      ],
    );//层叠布局 至少有两个子元素

    return MaterialApp(
      title: "层叠布局",
      home: Scaffold(
        appBar: new AppBar(title: new Text("层叠布局"),),
        body: Center(
//          child: new Text("我是层叠布局啊"),
          child: stack,
        ),
      ),
    );
  }
}