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
    funcLists.add({"name": "Scaffold", "action": "/MaterialComponents/Scaffold", "desc": "Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。"});
    funcLists.add({"name": "Appbar", "action": "/MaterialComponents/AppBar", "desc": "在水平方向上排列子widget的列表。"});
    funcLists.add({"name": "BottomNavigationBar", "action": "/MaterialComponents/BottomNavigationBar", "desc": "底部导航条，可以很容易地在tap之间切换和浏览顶级视图。"});
    funcLists.add({"name": "TabBar", "action": "/MaterialComponents/TabBar",  "desc": "一个显示水平选项卡的Material Design widget。"});
    funcLists.add({"name": "TabBarView", "action": "/MaterialComponents/TabBarView",  "desc": "显示与当前选中的选项卡相对应的页面视图。通常和TabBar一起使用。"});
    funcLists.add({"name": "MaterialApp", "action": "/MaterialComponents/MaterialApp",  "desc": "一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget。"});
    funcLists.add({"name": "WidgetsApp", "action": "/MaterialComponents/WidgetsApp",  "desc": "一个方便的类，它封装了应用程序通常需要的一些widget。"});
    funcLists.add({"name": "Drawer", "action": "/MaterialComponents/Drawer",  "desc": "从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板。"});
    funcLists.add({"name": "FloatingActionButton", "action": "/MaterialComponents/FloatingActionButton",  "desc": "一个圆形图标按钮，它悬停在内容之上，以展示应用程序中的主要动作。FloatingActionButton通常用于Scaffold.floatingActionButton字段。"});

    funcLists.add({"name": "FlatButton", "action": "/MaterialComponents/FlatButton",  "desc": "一个扁平的Material按钮。"});
    funcLists.add({"name": "IconButton", "action": "",  "desc": "一个Material图标按钮，点击时会有水波动画。"});
    funcLists.add({"name": "PopupMenuButton", "action": "",  "desc": "当菜单隐藏式，点击或调用onSelected时显示一个弹出式菜单列表。"});
    funcLists.add({"name": "ButtonBar", "action": "",  "desc": "水平排列的按钮组。"});

    funcLists.add({"name": "TextField", "action": "",  "desc": "文本输入框。"});
    funcLists.add({"name": "Checkbox", "action": "",  "desc": "复选框，允许用户从一组中选择多个选项。 "});
    funcLists.add({"name": "Radio", "action": "",  "desc": "单选框，允许用户从一组中选择一个选项。"});
    funcLists.add({"name": "Switch", "action": "",  "desc": "On/off 用于切换一个单一状态。"});
    funcLists.add({"name": "Slider", "action": "",  "desc": "滑块，允许用户通过滑动滑块来从一系列值中选择。"});
    funcLists.add({"name": "Date & Time Pickers", "action": "",  "desc": "日期&时间选择器。"});

    funcLists.add({"name": "SimpleDialog", "action": "",  "desc": "简单对话框可以显示附加的提示或操作。"});
    funcLists.add({"name": "AlertDialog", "action": "",  "desc": "一个会中断用户操作的对话款，需要用户确认。"});
    funcLists.add({"name": "BottomSheet", "action": "",  "desc": "BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。你可以调用showBottomSheet()或showModalBottomSheet弹出。"});
    funcLists.add({"name": "ExpansionPanel", "action": "",  "desc": "Expansion panels contain creation flows and allow lightweight editing of an element. The ExpansionPanel widget implements this component."});
    funcLists.add({"name": "SnackBar", "action": "",  "desc": "具有可选操作的轻量级消息提示，在屏幕的底部显示。"});

    funcLists.add({"name": "Image", "action": "",  "desc": "一个显示图片的widget。"});
    funcLists.add({"name": "Icon", "action": "",  "desc": "A Material Design icon. "});
    funcLists.add({"name": "Chip", "action": "",  "desc": "标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人。"});
    funcLists.add({"name": "Tooltip", "action": "",  "desc": "一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签。 "});
    funcLists.add({"name": "DataTable", "action": "",  "desc": "数据表显示原始数据集。它们通常出现在桌面企业产品中。DataTable Widget实现这个组件 "});
    funcLists.add({"name": "Card", "action": "",  "desc": "一个 Material Design 卡片。拥有一个圆角和阴影。"});
    funcLists.add({"name": "LinearProgressIndicator", "action": "",  "desc": "一个线性进度条，另外还有一个圆形进度条CircularProgressIndicator。"});

    funcLists.add({"name": "ListTile", "action": "",  "desc": " 一个固定高度的行，通常包含一些文本，以及一个行前或行尾图标。"});
    funcLists.add({"name": "Stepper", "action": "",  "desc": "一个Material Design 步骤指示器，显示一系列步骤的过程。"});
    funcLists.add({"name": "Divider", "action": "",  "desc": "一个逻辑1像素厚的水平分割线，两边都有填充。"});

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
                    print("${func}");
                    Navigator.pushNamed(context, "${func["action"]}");

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context){
                    //     if (func["name"] == "Scaffold") {
                    //       return FMScaffoldVC();
                    //     } else if (func["name"] == "Appbar") {
                    //       return FMAppBarVC();
                    //     } else if (func["name"] == "BottomNavigationBar") {
                    //       return FMBottomNavBarVC();
                    //     } else if (func["name"] == "TabBar") {
                    //       return FMTabBarVC();
                    //     } else if (func["name"] == "TabBarView") {
                    //       return FMTabbarViewVC();
                    //     } else if (func["name"] == "MaterialApp") {
                    //       return FMMaterialAppVC();
                    //     } else if (func["name"] == "WidgetsApp") {
                    //       return FMWidgetsAppVC();
                    //     } else if (func["name"] == "Drawer") {
                    //       return FMDrawerVC();
                    //     } else if (func["name"] == "FloatingActionButton") {
                    //       return FMFloatingActionButtonVC();
                    //     }
                    //
                    //     return FMScaffoldVC();
                    //   }),
                    // );
                  },
                );
              }
          ),
        ),
      ),
    );
  }
}