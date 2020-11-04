import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMCupertinoTabScaffoldVC extends StatefulWidget{
  @override
  FMCupertinoTabScaffoldState createState() => FMCupertinoTabScaffoldState();
}

class FMCupertinoTabScaffoldState extends State <FMCupertinoTabScaffoldVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
      tabBar: _cupertinoTabBar(), // 选项卡
      // 控制器，控制选中选项卡
      controller: CupertinoTabController(
        initialIndex: 2,
      ),
      backgroundColor: Colors.yellow, // 背景色，没啥效果
      tabBuilder: (context, index){
        return CupertinoTabView(
          // 路由设置
          routes: {
            '/subPage/music' : (context) => FMMusicPage(),
            '/subPage/chat' : (context) => FMChatPage(),
            '/subPage/buy' : (context) => FMBuyPage(),
            '/subPage/video' : (context) => FMVideoPage(),
          },
          // 构建函数，为每个选项卡提供不同页面
          builder: (context){
            switch (index){
              case 0:
                return FMMusicPage();
              case 1:
                return FMChatPage();
              case 2:
                return FMBuyPage();
              case 3:
                return FMVideoPage();
              default :
                return Container();
            }
          },
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
      // currentIndex: 2, // 设置默认选中位置
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

// 子选项卡页面

class FMMusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('音乐'),
      ),
      child: Center(
        child: Text('音乐'),
      ),
    );
  }
}

class FMChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Chat'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('点我 Push 音乐页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/subPage/music');
          },
        ),
      ),
    );
  }
}

class FMBuyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('购物'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('点我 Push 聊天页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/subPage/chat');
          },
        ),
      ),
    );
  }
}

class FMVideoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('视频'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('点我 Push 购物页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/subPage/buy');
          },
        ),
      ),
    );
  }
}
