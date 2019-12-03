import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

//简单的ListView
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "你好,world",
      home: Scaffold(//脚手架
        appBar: new AppBar(title: new Text("ListView"),),
        body: Center(

          child: new ListView(
            children: <Widget>[
//              new ListTile(leading: new Icon(Icons.accessibility),title:new Text("小孩"),),
//              new ListTile(leading: new Icon(Icons.access_alarm),title:new Text("闹钟"),),
//              new ListTile(leading: new Icon(Icons.add_a_photo),title:new Text("相机"),),
//              new ListTile(leading: new Icon(Icons.airplanemode_active),title:new Text("灰机"),)
            new Image.network("https://jspang.com/images/xiaomiquan.png"),
            new Image.network("https://jspang.com/images/bibidao.jpg"),
            new Image.network("https://jspang.com/images/react_blog_demo.jpg"),
            new Image.network("https://jspang.com/images/next_blog.jpg")
            ],
          ),
        ))
    );
  }
}
