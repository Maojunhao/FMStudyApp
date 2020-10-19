import 'package:flutter/material.dart';

class FMToolTipVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ToolTip"),),
      body: _listView(),
    );
  }

  ListView _listView(){
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        _text(),
        Padding(padding: EdgeInsets.all(15)),
        _imageTooltip()
      ],
    );
  }
  
  Tooltip _text(){
    return Tooltip(
      // 提示语
      message: "我叫路飞，是要成为海贼王的男人。我叫路飞，是要成为海贼王的男人。我叫路飞，是要成为海贼王的男人。我叫路飞，是要成为海贼王的男人。我叫路飞，是要成为海贼王的男人。",
      height: 30, // 不设置 child 时，Tooltip 的固有高度
      padding: EdgeInsets.all(20), // ToolTip 内边距
      margin: EdgeInsets.all(20), // ToolTip 外边距
      verticalOffset: 100, // 距离 child 中心点的竖直方向偏移量
      preferBelow: true, // 设置为 false 时，会展示在 child 上方
      excludeFromSemantics: false, // 是否使用语义标签
      waitDuration: Duration(seconds: 1), // 指针悬停多久后展示 Tooltip ，默认为 0
      showDuration: Duration(seconds: 10), // 展示时长，之后消失
      // 字体样式
      textStyle: TextStyle(
        color: Colors.black
      ),

      // 装饰
      decoration: _boxDecoration(),

      // 子控件
      child: Text(
        "路飞",
        textAlign: TextAlign.center,
      ),
    );
  }

  // 装饰
  BoxDecoration _boxDecoration(){
    return BoxDecoration(
      // 边框
      border: Border.all(
        color: Colors.red,
        width: 3,
      ),
      // 边框角
      borderRadius: BorderRadius.circular(30),
      // borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      //   color: Colors.yellow,
      // 背景图
      image: DecorationImage(
        image: NetworkImage('http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg'),
        // centerSlice: Rect.largest,
      ),
      // 阴影
      boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(10,10))],
      // 渐变色
      gradient: LinearGradient(colors: [Colors.white, Colors.yellow], begin: FractionalOffset(0, 0), end: FractionalOffset(0, 1)),
    );
  }


  Tooltip _imageTooltip(){
    return Tooltip(
      message: "海贼王按钮",
      height: 30, // 不设置 child 时，Tooltip 的固有高度
      padding: EdgeInsets.all(20), // ToolTip 内边距
      margin: EdgeInsets.all(20), // ToolTip 外边距
      verticalOffset: 100, // 距离 child 中心点的竖直方向偏移量
      preferBelow: true, // 设置为 false 时，会展示在 child 上方
      excludeFromSemantics: false, // 是否使用语义标签
      waitDuration: Duration(seconds: 1), // 指针悬停多久后展示 Tooltip ，默认为 0
      showDuration: Duration(seconds: 10), // 展示时长，之后消失
      // 字体样式
      textStyle: TextStyle(
          color: Colors.black
      ),
      decoration: BoxDecoration(
        color: Colors.red.shade100,
      ),

      child: Container(
        child: _column(),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 2
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }

  Column _column(){
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.network("http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg"),
        ),
        Text("海贼王"),
      ],
    );
  }
}