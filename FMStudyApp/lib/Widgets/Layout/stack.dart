import 'package:flutter/material.dart';

class FMStackVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Container(
        width: 400,
        height: 600,
        color: Colors.grey,
        child: _stack(),
      ),
    );
  }

  Stack _stack(){
    return Stack(
      alignment: Alignment.topRight,
      // clipBehavior: Clip.none,
      // textDirection: TextDirection.rtl,
      // overflow: Overflow.visible,
      fit: StackFit.expand,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(),
          child: Text("一行文字", style: TextStyle(backgroundColor: Colors.yellow),),
        ),
        _positionedForAll(),
        _positionedForLeftTop(),
        _positionedForClip(),
      ],
    );
  }

  // 四边约束，指定4个边的距离，然后这个 Positioned 会被拉伸，直到边距和设定一致
  Positioned _positionedForAll(){
    return Positioned(
      left: 150,
      top: 150,
      bottom: 10,
      right: 10,
      child: Container(
        color: Colors.cyan,
      ),
    );
  }

  // 位置约束，指定两边位置，设置过大小的 Container 就是绝对定位了
  Positioned _positionedForLeftTop(){
    return Positioned(
      left: 30,
      top: 30,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.yellow,
      ),
    );
  }

  // 超出父控件边界的约束
  Positioned _positionedForClip(){
    return Positioned(
      left: 30,
      top: 500,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.lightGreenAccent,
        alignment: Alignment.bottomCenter,
        child: FlatButton(
          onPressed: (){
            print("Button Clicked");
          },
          child: Text("Button"),
        ),
      ),
    );
  }
}