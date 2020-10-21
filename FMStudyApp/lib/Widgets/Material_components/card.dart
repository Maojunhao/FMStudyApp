import 'package:flutter/material.dart';

class FMCardVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Card"),),
      body: _listView(),
    );
  }
  
  ListView _listView(){
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        _normalCard(),
        Padding(padding: EdgeInsets.all(30)),
        _shapeCard()
      ],
    );
  }
  
  Card _normalCard(){
    return Card(
      color: Colors.red, // 背景色
      shadowColor: Colors.yellow, // 阴影颜色
      elevation: 20, // 阴影高度
      borderOnForeground: false, // 是否在 child 前绘制 border，默认为 true
      margin: EdgeInsets.fromLTRB(0, 50, 0, 30), // 外边距

      child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        child: Text("Noraml Card", style: TextStyle(color: Colors.white),),
      ),
    );
  }
  
  Card _shapeCard(){
    return Card(
      color: Colors.red, // 背景色
      shadowColor: Colors.yellow, // 阴影颜色
      elevation: 20, // 阴影高度
      borderOnForeground: false, // 是否在 child 前绘制 border，默认为 true
      margin: EdgeInsets.fromLTRB(0, 50, 0, 30), // 外边距

      // 边框
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
        side: BorderSide(
          color: Colors.yellow,
          width: 3,
        ),
      ),

      child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        child: Text("Shape Card", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}