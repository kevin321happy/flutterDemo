import 'package:flutter/material.dart';

//动态的ListView列表
void main() => runApp(MyApp(
  items: new List<String>.generate(1000,(i) =>"我是第 $i 个条目呀")
));

class MyApp extends StatelessWidget {

  final List<String> items;
  //构造方法
  MyApp({Key key ,@required this.items}):super(key:key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "动态的ListView列表啊",
      home: Scaffold(
        appBar: new AppBar(title: new Text("ListView的动态列表啊"),),
        body:new ListView.builder(itemCount:items.length,itemBuilder: (context,index){
          return new ListTile(
            title: new Text('${items[index]}'),
            leading: new Icon(Icons.ac_unit),
          );
        })
      ),
    );
  }}
