import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FMCupertinoSwitchVC extends StatefulWidget{
  @override
  FMCupertinoSwitchState createState() => FMCupertinoSwitchState();
}

class FMCupertinoSwitchState extends State <FMCupertinoSwitchVC> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoSwitch"),
      ),
      child: _safeArea(),
    );
  }

  SafeArea _safeArea(){
    return SafeArea(
      child: Column(
        children: [
          Text("Normal Switch",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            ),
          ),
          _cupertinoSwitch(),
          Text("Custom Switch",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
            ),
          ),
          _customSwitch(),
        ],
      ),
    );
  }

  CupertinoSwitch _cupertinoSwitch(){
    return CupertinoSwitch(
      // 当前 switch 的开关
      value: _switchValue,
      // 点击或者拖拽事件
      onChanged: (value){
        _switchValue = value;

        setState(() {

        });
      },
    );
  }

  CupertinoSwitch _customSwitch(){
    return CupertinoSwitch(
      // 当前 switch 的开关
      value: _switchValue,
      activeColor: Colors.red, // 开关打开时，轨道颜色
      trackColor: Colors.yellow, // 开关关闭时，轨道颜色
      dragStartBehavior: DragStartBehavior.down, // 拖拽效果，默认为 start 更为平滑，为 down 时有明显吸附效果
      onChanged: (value){
        _switchValue = value;

        setState(() {

        });
      },
    );
  }
}