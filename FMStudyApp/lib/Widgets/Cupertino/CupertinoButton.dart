import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMCupertinoButtonVC extends StatefulWidget{
  @override
  FMCupertinoButtonState createState() => FMCupertinoButtonState();
}

class FMCupertinoButtonState extends State <FMCupertinoButtonVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoActivityIndicator"),
      ),
      child: _safeArea(),
    );
  }

  SafeArea _safeArea(){
    return SafeArea(child: _column());
  }

  Column _column(){
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(20)),
        Container(
          alignment: Alignment.center,
          child: _cupertinoButton(),
          width: 210,
        ),
        Padding(padding: EdgeInsets.all(20)),
        Container(
          alignment: Alignment.center,
          child: _disabledButton(),
        ),
      ],
    );
  }

  CupertinoButton _cupertinoButton(){
    return CupertinoButton(
      // 子控件
      child: Row(
        children: [
          Icon(Icons.radio_button_checked),
          Padding(padding: EdgeInsets.all(5)),
          Text("CupertinoButton"),
        ],
      ),
      color: Colors.red, // button 颜色
      padding: EdgeInsets.all(20), // button 内边距
      disabledColor: Colors.grey, // 不可交互时颜色，onPressed == null 时显示
      // 点击事件
      onPressed: (){
        print("onPressed");
      },
    );
  }

  CupertinoButton _disabledButton(){
    return CupertinoButton(
      child: Text("DisabledButton"), // 子控件
      color: Colors.red, // button 颜色
      disabledColor: Colors.grey, // 不可交互时颜色，onPressed == null 时显示
      padding: EdgeInsets.all(20),
      onPressed: null,
      borderRadius: BorderRadius.circular(15),
    );
  }
}