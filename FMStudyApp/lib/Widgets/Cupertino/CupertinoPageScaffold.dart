import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMCupertinoPageScaffoldVC extends StatefulWidget{
  @override
  FMCupertinoPageScaffoldrState createState() => FMCupertinoPageScaffoldrState();
}

class FMCupertinoPageScaffoldrState extends State <FMCupertinoPageScaffoldVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: _cupertinoNavigationBar(), // 导航条
      backgroundColor: Colors.cyan, // 背景色
      // 子控件
      child: ListView(
        children: [

        ],
      ),
    );
  }

  CupertinoNavigationBar _cupertinoNavigationBar(){
    return CupertinoNavigationBar(
      // leading: Icon(Icons.arrow_back), // 左侧组件
      automaticallyImplyLeading: true, // 是否添加默认 leading，默认为 true。当 leading 为空会默认添加一个返回按钮
      automaticallyImplyMiddle: true, // 是否添加默认 middle，默认为 true，如果 middle 为空，且当前 route 为 CupertinoPageRoute，会默认填充 route.title
      previousPageTitle: "back", // 当 leading 为空，且 automaticallyImplyLeading == true，会出现在默认返回箭头右边的文字
      middle: Text("CupertinoPageScaffold"), // 中间标题组件
      trailing: Icon(Icons.add), // 右侧组件
      // 边框
      border: Border(
        bottom: BorderSide(
            color: Colors.red,
            width: 1
        ),
      ),
      backgroundColor: Colors.blue.shade100, // 背景色
      brightness: Brightness.light, // 上方电量，事件，Wifi 等状态栏颜色
      // 内边距，用来调节所有子组件上下左右偏移
      padding: EdgeInsetsDirectional.only(
          start: 15,
          bottom: 0,
          end: 15
      ),
      // leading 和 trailing 的默认颜色
      actionsForegroundColor: Colors.red,
    );
  }
}