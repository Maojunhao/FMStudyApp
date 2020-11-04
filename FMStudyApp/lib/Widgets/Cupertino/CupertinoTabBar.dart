import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMCupertinoTabBarVC extends StatefulWidget{
  @override
  FMCupertinoTabBarState createState() => FMCupertinoTabBarState();
}

class FMCupertinoTabBarState extends State <FMCupertinoTabBarVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      tabBar: _cupertinoTabBar(),
      tabBuilder: (context, index){
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text("CupertinoTabBar"),
          ),
          child: ListView(
            children: [

            ],
          ),
        );
      },
    );
  }

  CupertinoTabBar _cupertinoTabBar(){
    return CupertinoTabBar(
      // 点击回调
      onTap: (index){
        print("tap Index = $index");
      },
      currentIndex: 2, // 设置默认选中位置
      backgroundColor: Colors.lightBlueAccent, // tabbar 背景色
      activeColor: Colors.white, // 图标高亮颜色
      inactiveColor: Colors.grey, // 图标未选中颜色
      iconSize: 25, // 图标大小
      // 边框
      border: Border(
        top: BorderSide(
          width: 3,
          color: Colors.red
        ),
      ),
      items: [
        _bottomNavigationBarItem(Icons.add, "第一个"),
        _bottomNavigationBarItem(Icons.add, "第二个"),
        _bottomNavigationBarItem(Icons.add, "第三个"),
        _bottomNavigationBarItem(Icons.add, "第四个"),
      ],
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(IconData activeIcon, String title){
    return BottomNavigationBarItem(
      icon: Icon(Icons.ac_unit), // 图标
      activeIcon: Icon(activeIcon), // 高亮图标
      title: Text("$title"), // 标题
      backgroundColor: Colors.yellow, // 背景色，仅在 BottomNavigatinBar 中生效，在 iOS 风格组件中无效
    );
  }
}