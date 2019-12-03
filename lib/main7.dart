import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//水平布局
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return MaterialApp(
      title: "水平布局",
      home: Scaffold(
        appBar: new AppBar(title: new Text("水平布局")),
        body: new Row(
          children: <Widget>[
//            //不灵活布局
//           new RaisedButton(onPressed: (){}
//           ,color: Colors.lightBlueAccent,
//           child: new Text("第一个button"),),
//            new RaisedButton(onPressed: (){}
//              ,color: Colors.pink,
//              child: new Text("第2个button"),),
//            new RaisedButton(onPressed: (){}
//              ,color: Colors.purple,
//              child: new Text("第叁个button"),)
              //灵活布局
//            Expanded(child:new RaisedButton(onPressed: (){}
//              ,color: Colors.lightBlueAccent,
//              child: new Text("第一个button"),)),
//            Expanded(child: new RaisedButton(onPressed: (){}
//              ,color: Colors.pink,
//              child: new Text("第2个button"),)),
//            Expanded(child:new RaisedButton(onPressed: (){}
//             ,color: Colors.purple,
//             child: new Text("第叁个button"),) )

            //半灵活布局
           new RaisedButton(onPressed: (){}
              ,color: Colors.lightBlueAccent,
              child: new Text("第一个bn"),),
            Expanded(child: new RaisedButton(onPressed: (){}
              ,color: Colors.pink,
              child: new Text("第2个button"),)),
            new RaisedButton(onPressed: (){}
              ,color: Colors.purple,
              child: new Text("第叁个budadadaattad.."),)
          ],
        ),
      ),
    );
  }
}
