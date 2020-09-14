import 'package:flutter/material.dart';

class FMTabBarVC extends StatefulWidget {
  @override
  FMTabBarState createState() => FMTabBarState();
}

class FMTabBarState extends State<FMTabBarVC> {
  var pageDatas = [];

  @override
  void initState(){
    super.initState();

    initData();
  }
  
  void initData(){
    pageDatas.add({"title":"一年级英语", "content":["我是一年级英语一班", "我是一年级英语二班","我是一年级英语三班"]});
    pageDatas.add({"title":"二年级英语", "content":["我是二年级英语一班", "我是二年级英语二班","我是二年级英语三班"]});
    pageDatas.add({"title":"三年级英语", "content":["我是三年级英语一班", "我是三年级英语二班","我是三年级英语三班"]});
    pageDatas.add({"title":"四年级英语", "content":["我是四年级英语一班", "我是四年级英语二班","我是四年级英语三班"]});
    pageDatas.add({"title":"五年级英语", "content":["我是五年级英语一班", "我是五年级英语二班","我是五年级英语三班"]});

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: pageDatas.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: _tabBar(),
        ),
        body: Container(
          color: Colors.grey,
        ),
      ),
    );
  }

  DefaultTabController _tabController(){
    return DefaultTabController(
      length: pageDatas.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: _tabBar(),
        ),
        body: Container(
          color: Colors.grey,
        ),
      ),
    );
  }

  TabBar _tabBar(){
    return TabBar(
      tabs: _tabs(),
      isScrollable: true,
      indicatorColor: Colors.red,
      indicatorWeight: 5,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.yellow,
      labelStyle: TextStyle(
        fontSize: 15,
      ),
      unselectedLabelColor: Colors.black,
      unselectedLabelStyle: TextStyle(
        fontSize: 12
      ),
      labelPadding: EdgeInsets.only(top: 30,left: 15),
      // indicatorPadding: EdgeInsets.only(bottom: 15),
      // indicator: UnderlineTabIndicator(
      //   borderSide: BorderSide(
      //     color: Colors.red,
      //     width: 3
      //   ),
      // ),

      onTap: (index){
        print("点击了 index = ${index}");
      },
    );
  }

  List <Widget> _tabs(){
    List <Widget> tabList = [];
    pageDatas.forEach((page) {
      tabList.add(
        Tab(text: page["title"],),
      );
    });
    print(tabList);
    return tabList;
  }
}

class FMTabController extends TabController {
  TabBar _tabBar(){
    return TabBar(
      tabs: [
        Tab(text: "t1"),
        Tab(text: "t2"),
        Tab(text: "t3"),
      ],
      controller: this,
    );
  }
}
