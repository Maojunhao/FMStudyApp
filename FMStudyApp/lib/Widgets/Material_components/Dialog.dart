import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMDialogVC extends StatefulWidget {
  @override
  FMDialogState createState() => FMDialogState();
}

class FMDialogState extends State <FMDialogVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Dialog"),),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          _showDialog(context, "SimpleDialog - Normal", _simpleDialogForNormal(context)),
          _showDialog(context, "SimpleDialog - Shape", _simpleDialogForShape(context)),
          _showDialog(context, "AlertDialog - Normal", _alertDialogForNormal(context)),
          _showDialog(context, "AlertDialog - Shape", _alertDialogForShape(context)),
          _showCupertinoDialog(context, "CupertinoAlertDialog - Normal", _cupertinoAlertDialog(context)),
          _showCupertinoDialog(context, "CupertinoAlertDialog - Three", _cupertinoAlertDialogForThree(context)),
          _showDialog(context, "Use showDialog 展示 CupertinoAlertDialog - Normal", _cupertinoAlertDialog(context)),
          _showDialog(context, "Dialog - Custom", _customDialog(context)),
        ],
      ),
    );
  }

  // showDialog 展示 Dialog
  RaisedButton _showDialog(context, title, dialog){
    return RaisedButton(
      child: Text("$title"),
      // 设置异步回调
      onPressed: () async {
        // 接收点击自己反参的值
        var result = await showDialog(
          context: context,
          // barrierColor: Colors.red.withAlpha(30),
          // barrierDismissible: true,
          // builder: (context){
          //   return dialog;
          // },
          child: dialog,
        );
        print(result);
      },
    );
  }

  // showCupertinoDialog 展示 Dialog，showCupertinoDialog 相比 showDialog 缺少部分属性，并且默认点击背景不隐藏
  RaisedButton _showCupertinoDialog(context, title, dialog){
    return RaisedButton(
      child: Text("$title"),
      onPressed: () async {
        var result = await showCupertinoDialog(
          context: context,
          builder: (context){
            return dialog;
          },
        );
      },
    );
  }

  SimpleDialog _simpleDialogForNormal(context){
    return SimpleDialog(
      title: Text("SimpleDialog - Shape"), // 标题
      titlePadding: EdgeInsets.fromLTRB(20, 20, 0, 0), // 标题外间距
      // 标题样式 TextStyle
      titleTextStyle: TextStyle(
        color: Colors.blue,
        fontSize: 25,
      ),
      contentPadding: EdgeInsets.only(left: 15, right: 15), // 内容外间距
      backgroundColor: Colors.white, // 背景色
      // 子控件，可以随意自定义
      children: [
        Container(
          child: Text("这就是最简单的 Dialog 了, 也可以在这里自定义样式。"),
          alignment: Alignment.center,
          padding: EdgeInsets.all(40),
        ),
        FlatButton(
          onPressed: (){
            // 隐藏弹框
            Navigator.pop(context, 'SimpleDialog - Normal, 我知道了');
          },
          child: Text("我知道了"),
          textColor: Colors.white,
          color: Colors.blue,
        ),
      ],
    );
  }

  SimpleDialog _simpleDialogForShape(context){
    return SimpleDialog(
      title: Text("SimpleDialog - Normal"), // 标题
      titlePadding: EdgeInsets.fromLTRB(20, 20, 0, 0), // 标题外间距
      // 标题样式 TextStyle
      titleTextStyle: TextStyle(
        color: Colors.blue,
        fontSize: 25,
      ),
      contentPadding: EdgeInsets.only(left: 15, right: 15), // 内容外间距
      backgroundColor: Colors.yellow, // 背景色
      // shape 形状
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Colors.red,
          width: 1,
        ),
        
      ),
      // 子控件，可以随意自定义
      children: [
        Container(
          child: Text("这就是最简单的 Dialog 了, 也可以在这里自定义样式。"),
          alignment: Alignment.center,
          padding: EdgeInsets.all(40),
        ),
        FlatButton(
          onPressed: (){
            // 隐藏弹框
            Navigator.pop(context, 'SimpleDialog - Normal, 我知道了');
          },
          child: Text("我知道了"),
          textColor: Colors.white,
          color: Colors.blue,
        ),
      ],
    );
  }

  AlertDialog _alertDialogForNormal(context){
    return AlertDialog(
      title: Text("AlertDialog - Normal"), // 标题
      titlePadding: EdgeInsets.fromLTRB(20, 20, 0, 0), // 标题外间距
      // 标题样式 TextStyle
      titleTextStyle: TextStyle(
        color: Colors.blue,
        fontSize: 25,
      ),
      contentPadding: EdgeInsets.only(left: 15, right: 15), // 内容外间距
      // 内容样式 TextStyle
      contentTextStyle: TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
      // 内容控件
      content: Container(
        height: 100,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15),),
            Text("这是最简单的 AlertDialog，也可以自定义样式"),
          ],
        ),
      ),

      backgroundColor: Colors.white, // 背景色

      actionsPadding: EdgeInsets.all(15), // 事件子控件间距
      // 事件子控件
      actions: [
        Text("也可以不放按钮的"),
        FlatButton(
          onPressed: (){
            Navigator.pop(context, 'AlertDialog - Normal, cancel');
          },
          child: Text("cancel")
        ),
        FlatButton(
          onPressed: (){
            Navigator.pop(context, 'AlertDialog - Normal, ok');
          },
          child: Text("ok"),
        ),
      ],
    );
  }

  AlertDialog _alertDialogForShape(context){
    return AlertDialog(
      title: Text("AlertDialog - Shape"), // 标题
      titlePadding: EdgeInsets.fromLTRB(20, 20, 0, 0), // 标题外间距
      // 标题样式 TextStyle
      titleTextStyle: TextStyle(
        color: Colors.blue,
        fontSize: 25,
      ),
      contentPadding: EdgeInsets.only(left: 15, right: 15), // 内容外间距
      // 内容样式 TextStyle
      contentTextStyle: TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
      // 内容控件
      content: Container(
        height: 100,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15),),
            Text("这是最简单的 AlertDialog，也可以自定义样式"),
          ],
        ),
      ),

      backgroundColor: Colors.white, // 背景色

      actionsPadding: EdgeInsets.all(15), // 事件子控件间距
      // 事件子控件
      actions: [
        Text("也可以不放按钮的"),
        FlatButton(
            onPressed: (){
              Navigator.pop(context, 'AlertDialog - Shape, cancel');
            },
            child: Text("cancel")
        ),
        FlatButton(
          onPressed: (){
            Navigator.pop(context, 'AlertDialog - Shape, ok');
          },
          child: Text("ok"),
        ),
      ],
      // shape 形状
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: Colors.red,
          width: 1,
        ),

      ),
    );
  }

  CupertinoAlertDialog _cupertinoAlertDialog(context){
    return CupertinoAlertDialog(
      title: Text("CupertinoAlertDialog - Normal"),
      content: Container(
        height: 100,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15),),
            Text("这是最简单的 CupertinoAlertDialog，也可以自定义样式"),
          ],
        ),
      ),
      actions: [
        FlatButton(
            onPressed: (){
              Navigator.pop(context, 'CupertinoAlertDialog - Normal, cancel');
            },
            child: Text("cancel")
        ),
        FlatButton(
          onPressed: (){
            Navigator.pop(context, 'CupertinoAlertDialog - Normal, ok');
          },
          child: Text("ok"),
        ),
      ],
    );
  }

  CupertinoAlertDialog _cupertinoAlertDialogForThree(context){
    return CupertinoAlertDialog(
      title: Text("CupertinoAlertDialog - Normal"),
      content: Container(
        height: 100,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15),),
            Text("这是最简单的 CupertinoAlertDialog，也可以自定义样式"),
          ],
        ),
      ),
      actions: [
        FlatButton(
            onPressed: (){
              Navigator.pop(context, 'CupertinoAlertDialog - Three, cancel');
            },
            child: Text("cancel")
        ),
        FlatButton(
            onPressed: (){
              Navigator.pop(context, 'CupertinoAlertDialog - Three, delete');
            },
            child: Text(
              "delete",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
        ),
        FlatButton(
          onPressed: (){
            Navigator.pop(context, 'CupertinoAlertDialog - Three, ok');
          },
          child: Text("ok"),
        ),
      ],
    );
  }

  Dialog _customDialog(context){
    return Dialog(
      backgroundColor: Colors.yellow.shade100, // 背景色
      elevation: 4.0, // 阴影高度
      insetAnimationDuration: Duration(milliseconds: 300), // 动画时间
      insetAnimationCurve: Curves.decelerate, // 动画效果
      insetPadding: EdgeInsets.all(30), // 弹框距离屏幕边缘距离
      clipBehavior: Clip.none, // 剪切方式
      child: Container(
        width: 300,
        height: 300,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Custom Dialog", style: TextStyle(color: Colors.blue, fontSize: 25),),
            Padding(padding: EdgeInsets.all(15)),
            Text("这是一个最简单的自定义 Custom Dialog"),
            Padding(padding: EdgeInsets.all(15),),
            FlatButton(
              onPressed: (){
                // 隐藏弹框
                Navigator.pop(context, 'SimpleDialog - Normal, 我知道了');
              },
              child: Text("我知道了"),
              textColor: Colors.white,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}