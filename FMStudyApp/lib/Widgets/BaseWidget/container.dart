import 'package:flutter/material.dart';

class FMContainerVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Container",
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: _container(),
      ),
    );
  }

  Container _container() {
    return Container(
      // width: 320,
      // height: 200,
      margin: const EdgeInsets.only(left: 70, top: 100, right: 30),
      constraints: BoxConstraints.expand(
        width: 320,
        height: 200,
      ),

      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(30),
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30), bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      //   color: Colors.yellow,
        image: DecorationImage(
          image: NetworkImage('http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg'),
          // centerSlice: Rect.largest,
        ),
        boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(10,10))],
        gradient: LinearGradient(colors: [Colors.white, Colors.yellow], begin: FractionalOffset(0, 0), end: FractionalOffset(0, 1)),
      ),
      transform: Matrix4.rotationZ(0.1),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(30),
      child: Text(
        "Container",
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
        ),
      ),
    );
  }
}
