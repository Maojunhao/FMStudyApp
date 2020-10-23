import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMCupertinoAlertDialogVC extends StatefulWidget{
  @override
  FMCupertinoAlertDialogState createState() => FMCupertinoAlertDialogState();
}

class FMCupertinoAlertDialogState extends State <FMCupertinoAlertDialogVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoAlertDialog"),
      ),
      child: _safeArea(context),
    );
  }

  SafeArea _safeArea(context){
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(30),
        children: [
          CupertinoButton(
            child: Text("CupertinoAlertDialog Normal"),
            color: Colors.red,
            onPressed: (){
              showDialog(context: context, builder: (context) {
                return _cupertinoAlertDialogForNormal(context);
              });
            },
          ),
          Padding(padding: EdgeInsets.all(15)),
          CupertinoButton(
            child: Text("CupertinoAlertDialog Two Button"),
            color: Colors.red,
            onPressed: (){
              showDialog(context: context, builder: (context) {
                return _cupertinoAlertDialogForTwoAction(context);
              });
            },
          ),
          Padding(padding: EdgeInsets.all(15)),
          CupertinoButton(
            child: Text("CupertinoAlertDialog Custom"),
            color: Colors.red,
            onPressed: (){
              showDialog(context: context, builder: (context) {
                return _cupertinoAlertDialogForCustom(context);
              });
            },
          ),
          Padding(padding: EdgeInsets.all(30)),
          Text(
            "更多弹框可以关注：\n\n[Flutter入门（34）：Flutter 组件之弹框](https://www.jianshu.com/p/4a6cceb95ba7)",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }


  CupertinoAlertDialog _cupertinoAlertDialogForNormal(context){
    return CupertinoAlertDialog(
      title: Text("CupertinoAlertDialog Normal"), // 标题组件
      content: Text("这是一个最简单的 CupertinoAlertDialog Noramal 弹框"), // 内容组件
      // 按钮组件 List
      actions: [
        FlatButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text("我知道了"),
        ),
      ],
    );
  }

  CupertinoAlertDialog _cupertinoAlertDialogForTwoAction(context){
    return CupertinoAlertDialog(
      title: Text("Alert"), // 标题组件
      content: Text("Content"), // 内容组件
      // 按钮组件 List
      actions: [
        CupertinoDialogAction(
          child: Text("确认"), // 子组件
          // 是否为默认事件，为 true 时会加粗
          isDefaultAction: false,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        CupertinoDialogAction(
          child: Text("取消"), // 子组件
          // 是否为警告按钮，为 true 时会变成红色
          isDestructiveAction: true,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  CupertinoAlertDialog _cupertinoAlertDialogForCustom(context){
    return CupertinoAlertDialog(
      // 标题组件
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_alert),
          Padding(padding: EdgeInsets.all(10)),
          Text("Alert"),
        ],
      ),
      // 内容组件
      content: Column(
        children: [
          Padding(padding: EdgeInsets.all(15)),
          Container(
            width: 100,
            height: 100,
            child: Image.network("http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg"),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text("这是一个简单的图文弹框。"),
        ],
      ),
      // 按钮组件 List
      actions: [
        CupertinoDialogAction(
          // 子组件
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.laptop_chromebook),
              Text("我知道了"),
            ],
          ),
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          // 点击事件
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        CupertinoDialogAction(
          // 子组件
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.laptop_chromebook),
              Text("确认",
                style: TextStyle(fontSize: 20,),
              ),
            ],
          ),
          // 是否为默认事件，为 true 时会加粗
          isDefaultAction: true,
          // 点击事件
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        CupertinoDialogAction(
          // 子组件
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.laptop_chromebook),
              Text("取消",
                style: TextStyle(fontSize: 20,),
              ),
            ],
          ),
          // 是否为警告按钮，为 true 时会变成红色
          isDestructiveAction: true,
          // 点击事件
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}