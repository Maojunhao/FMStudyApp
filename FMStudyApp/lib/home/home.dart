import 'package:flutter/material.dart';

import 'package:FMStudyApp/Widgets/BaseWidget/basewidget_vc.dart';
import 'package:FMStudyApp/Widgets/Material_components/material_components_vc.dart';
import 'package:FMStudyApp/Widgets/Cupertino/cupertiono_vc.dart';

class FMHomeVC extends StatefulWidget {
  @override
  FMHomeState createState() => FMHomeState();
}

class FMHomeState extends State<FMHomeVC> {
  var funcLists = [];

  @override
  void initState() {
    super.initState();

    initData();
  }

  void initData() {
    funcLists.add({"name": "基础组件", "desc": "在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget。"});
    funcLists.add({"name": "Material Components", "desc": "实现了Material Design 指南的视觉、效果、motion-rich的widget。"});
    funcLists.add({"name": "Cupertino(iOS风格的widget)", "desc": "用于当前iOS设计语言的美丽和高保真widget。"});
    funcLists.add({"name": "Layout", "desc": "排列其它widget的columns、rows、grids和其它的layouts。"});
    funcLists.add({"name": "Text", "desc": "文本显示和样式。"});
    funcLists.add({"name": "Assets、图片、Icons", "desc": "管理assets, 显示图片和Icon。"});
    funcLists.add({"name": "Input", "desc": "Material Components 和 Cupertino中获取用户输入的widget。"});
    funcLists.add({"name": "动画和Motion", "desc": "在您的应用中使用动画。查看Flutter中的动画总览。"});
    funcLists.add({"name": "交互模型", "desc": "响应触摸事件并将用户路由到不同的页面视图（View）。"});
    funcLists.add({"name": "样式", "desc": "管理应用的主题，使应用能够响应式的适应屏幕尺寸或添加填充。"});
    funcLists.add({"name": "绘制和效果", "desc": "Widget将视觉效果应用到其子组件，而不改变它们的布局、大小和位置。"});
    funcLists.add({"name": "Async", "desc": "Flutter应用的异步模型。"});
    funcLists.add({"name": "滚动", "desc": "滚动一个拥有多个子组件的父组件。"});
    funcLists.add({"name": "辅助功能", "desc": "给你的App添加辅助功能(这是一个正在进行的工作)。"});

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
          title: Text("Widgets 目录"),
        ),
        body: Center(
          child: ListView.builder(
            padding: const EdgeInsets.all(15.0),
            // 生成对应数据源数量的 Item
            itemCount: funcLists.length,
            itemBuilder: (context, index){
              // 按照数据源对每个 Item 进行渲染
              var func = funcLists[index];
              return ListTile(
                contentPadding: const EdgeInsets.all(10.0),
                title: Text(
                  "${func["name"]}",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  "${func["desc"]}",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                onTap: (){
                  // 点击事件，在这里处理不同 Item 跳转
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      if (func["name"] == "基础组件") {
                        return FMBaseWidgetVC(func: func,);
                      } else if (func["name"] == "Material Components") {
                        return FMMaterialComponentsVC(func: func,);
                      }
                      return FMBaseWidgetVC(func: func,);
                    }),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}


