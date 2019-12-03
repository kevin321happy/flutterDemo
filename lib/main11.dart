import 'package:flutter/material.dart';

//构建商品列表
class Produce {
  final String title; //商品标题
  final String des; //商品描述
  Produce(this.title, this.des);

  void main() {
    runApp(MaterialApp(
      title: "数据传递案例",
      home:ProduceList(produces: List.generate(20, (i)=>Produce('商品$i', '商品的价格为${i*10}美元'))),
    ));
  }
}

//商品列表
class ProduceList extends StatelessWidget {

  final List<Produce> produces;

  const ProduceList({Key key, @required this.produces}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("商品列表")),
      body: ListView.builder(
          itemCount: produces.length,

          itemBuilder: (context, index) {
            return ListTile(
              title: Text(produces[index].title),
              onTap: () {

              }
              ,
            );
          }),
    );
  }
}


