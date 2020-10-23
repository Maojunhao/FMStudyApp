import 'package:flutter/cupertino.dart';

class FMCupertinoTabBarVC extends StatefulWidget{
  @override
  FMCupertinoTabBarState createState() => FMCupertinoTabBarState();
}

class FMCupertinoTabBarState extends State <FMCupertinoTabBarVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoTabBar"),
      ),
      child: ListView(
        children: [

        ],
      ),
    );
  }
}