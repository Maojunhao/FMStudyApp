import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FMTabbarViewVC extends StatefulWidget {
  @override
  FMTabbarViewState createState() => FMTabbarViewState();
}

class FMTabbarViewState extends State<FMTabbarViewVC> {
  var pageDatas = [];
  // 控制联动
  TabController controller;

  @override
  void initState(){
    super.initState();

    initData();
    controller = TabController(length: pageDatas.length, vsync: ScrollableState());
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
        body: _tabBarView(),
        // body: TabBarView(children: [Container(),]),
      ),
    );
  }

  TabBar _tabBar(){
    return TabBar(
      tabs: _tabs(),
      isScrollable: true,
      indicatorColor: Colors.red,
      indicatorWeight: 5,
      controller: controller,
      onTap: (index){
        print("点击了 index = ${index}");
      },
    );
  }

  TabBarView _tabBarView(){
    return TabBarView(
      children: _tabViews(),
      physics: BouncingScrollPhysics(

      ),
      dragStartBehavior: DragStartBehavior.down,
      controller: controller,
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

  List <Widget> _tabViews(){
    List <Widget> tabViewList = [];
    pageDatas.forEach((page) {
      var contents = page["content"];
      tabViewList.add(
        ListView(
          children: _listViewChildren(contents),
        ),
      );
    });
    print(tabViewList);
    return tabViewList;
  }

  List <Widget> _listViewChildren(List contents){
    List <Widget> children = [];
    contents.forEach((content) {
      children.add(
          ListTile(title: Text("${content}"),)
      );
    });
    return children;
  }
}
