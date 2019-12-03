import 'package:flutter/material.dart';
import 'package:flutter_app1/main10.dart';

void main() {
  runApp(MaterialApp(
    title: "第一个界面",
    home: DiyigePage(),
  ));
}

class DiyigePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("跳转到下一个页面"),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

//点击这个按钮跳转到下一个页面
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      //点击了按钮开始跳转
      onPressed: () {
        _navigateToNext(context);
      },
      child: Text('跳转到下一个界面,并接受数据'),
    );
  }
}

//异步处理
_navigateToNext(BuildContext context) async {
  final result = await Navigator.push(
      //等待
      context,
      MaterialPageRoute(builder: (context) => DiergePage()));
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('${result}'),
  ));
}

//第二个界面
class DiergePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个界面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('第一个元素.....'),
              onPressed: () {
                Navigator.pop(context, '第一个元素.....');
              },
            ),
            RaisedButton(
              child: Text('第2个元素.....'),
              onPressed: () {
                Navigator.pop(context, '第2个元素.....');
              },
            )
          ],
        ),
      ),
    );
  }
}
