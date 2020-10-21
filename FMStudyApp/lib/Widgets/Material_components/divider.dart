import 'package:flutter/material.dart';

class FMDividerVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Divider"),),
      body: _listView(),
    );
  }

  ListView _listView(){
    return ListView(
      children: [
        Container(
          height: 50,
          color: Colors.yellow,
          child: Text("高度为 30，线宽为 5 的分割线"),
        ),
        Divider(
          height: 50, // Divider 组件高度
          thickness: 5, // 分割线线宽，分割线居于 Divider 中心
          indent: 20, // 分割线左侧间距
          endIndent: 15, // 分割线右侧间距
          color: Colors.red, // 分割线颜色
        ),
        Container(
          height: 50,
          color: Colors.yellow,
          child: Text("高度为 0，线宽为 5 的分割线"),
        ),
        Divider(
          height: 0, // Divider 组件高度
          thickness: 5, // 分割线线宽，分割线居于 Divider 中心
          indent: 20, // 分割线左侧间距
          endIndent: 15, // 分割线右侧间距
          color: Colors.red, // 分割线颜色
        ),
      ],
    );
  }
}