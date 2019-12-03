import 'package:flutter/material.dart';

//页面跳转和返回
void main() {
  runApp(MaterialApp(
    title: "导航栏",
    home: FirstPage(),
  ));
}

//第一个页面
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("导航页面FirstPage"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("查看商品详情"),
          onPressed: () {
            //跳转到下一个yemian
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new SecondPage()));
          },
        ),
      ),
    );
  }
}

//第二个界面

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情耶"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("返回上一页"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
