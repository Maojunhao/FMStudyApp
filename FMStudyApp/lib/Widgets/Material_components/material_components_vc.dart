import 'package:FMStudyApp/Widgets/Material_components/floatingActionButton.dart';
import 'package:flutter/material.dart';
import 'package:FMStudyApp/Widgets/Material_components/scaffold.dart';
import 'package:FMStudyApp/Widgets/Material_components/appbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/bottomnavigationbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/drawer.dart';
import 'package:FMStudyApp/Widgets/Material_components/materialapp.dart';
import 'package:FMStudyApp/Widgets/Material_components/tabbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/tabbarview.dart';
import 'package:FMStudyApp/Widgets/Material_components/widgetsapp.dart';

class FMMaterialComponentsVC extends StatefulWidget {
  final func;
  const FMMaterialComponentsVC({Key key, @required this.func}) : super(key: key);

  @override
   FMMaterialComponentsState createState() =>  FMMaterialComponentsState();
}

class  FMMaterialComponentsState extends State<FMMaterialComponentsVC>{
  var funcLists = [];

  void initState(){
    super.initState();

    initData();
  }

  void initData(){
    funcLists.add({"name": "Scaffold", "desc": "Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。"});
    funcLists.add({"name": "Appbar", "desc": "在水平方向上排列子widget的列表。"});
    funcLists.add({"name": "BottomNavigationBar", "desc": "底部导航条，可以很容易地在tap之间切换和浏览顶级视图。"});
    funcLists.add({"name": "TabBar", "desc": "一个显示水平选项卡的Material Design widget。"});
    funcLists.add({"name": "TabBarView", "desc": "显示与当前选中的选项卡相对应的页面视图。通常和TabBar一起使用。"});
    funcLists.add({"name": "MaterialApp", "desc": "一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget。"});
    funcLists.add({"name": "WidgetsApp", "desc": "一个方便的类，它封装了应用程序通常需要的一些widget。"});
    funcLists.add({"name": "Drawer", "desc": "从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板。"});
    funcLists.add({"name": "FloatingActionButton", "desc": "一个圆形图标按钮，它悬停在内容之上，以展示应用程序中的主要动作。FloatingActionButton通常用于Scaffold.floatingActionButton字段。"});

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("${widget.func["name"]}"),
        ),
        body: Center(
          child: ListView.builder(
              padding: const EdgeInsets.all(15.0),
              itemCount: funcLists.length,
              itemBuilder: (context, index) {
                var func = funcLists[index];
                return ListTile(
                  title: Text(
                    "${func["name"]}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text(
                    "${func["desc"]}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        if (func["name"] == "Scaffold") {
                          return FMScaffoldVC();
                        } else if (func["name"] == "Appbar") {
                          return FMAppBarVC();
                        } else if (func["name"] == "BottomNavigationBar") {
                          return FMBottomNavBarVC();
                        } else if (func["name"] == "TabBar") {
                          return FMTabBarVC();
                        } else if (func["name"] == "TabBarView") {
                          return FMTabbarViewVC();
                        } else if (func["name"] == "MaterialApp") {
                          return FMMaterialAppVC();
                        } else if (func["name"] == "WidgetsApp") {
                          return FMWidgetsAppVC();
                        } else if (func["name"] == "Drawer") {
                          return FMDrawerVC();
                        } else if (func["name"] == "FloatingActionButton") {
                          return FMFloatingActionButtonVC();
                        }

                        return FMScaffoldVC();
                      }),
                    );
                  },
                );
              }
          ),
        ),
      ),
    );
  }
}