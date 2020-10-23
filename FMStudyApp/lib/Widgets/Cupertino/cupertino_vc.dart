import 'package:flutter/material.dart';

class FMCupertinoVC extends StatefulWidget {
  final func;
  const FMCupertinoVC({Key key, @required this.func}) : super(key: key);

  @override
  FMCupertinoState createState() =>  FMCupertinoState();
}

class  FMCupertinoState extends State<FMCupertinoVC>{
  var funcLists = [];

  void initState(){
    super.initState();

    initData();
  }

  void initData(){
    funcLists.add({"name": "CupertinoActivityIndicator", "action": "/Cupertino/CupertinoActivityIndicator", "desc": "一个iOS风格的loading指示器。显示一个圆形的转圈菊花。"});
    funcLists.add({"name": "CupertinoAlertDialog", "action": "/Cupertino/CupertinoAlertDialog", "desc": "iOS风格的alert dialog。"});
    funcLists.add({"name": "CupertinoButton", "action": "/Cupertino/CupertinoButton", "desc": "iOS风格的button。"});
    funcLists.add({"name": "CupertinoDialog", "action": "/Cupertino/CupertinoDialog", "desc": "iOS风格的对话框。"});
    funcLists.add({"name": "CupertinoDialogAction", "action": "/Cupertino/CupertinoDialogAction", "desc": "通常用于CupertinoAlertDialog的一个button。"});
    funcLists.add({"name": "CupertinoSlider", "action": "/Cupertino/CupertinoSlider", "desc": "从一个范围中选一个值。"});
    funcLists.add({"name": "CupertinoSwitch", "action": "/Cupertino/CupertinoSwitch", "desc": "OS风格的开关. 用于单一状态的开/关。"});
    funcLists.add({"name": "CupertinoPageTransition", "action": "/Cupertino/CupertinoPageTransition", "desc": "提供iOS风格的页面过度动画。"});
    funcLists.add({"name": "CupertinoFullscreenDialogTransition", "action": "/Cupertino/CupertinoFullscreenDialogTransition", "desc": "一个iOS风格的过渡，用于调用全屏对话框。"});
    funcLists.add({"name": "CupertinoNavigationBar", "action": "/Cupertino/CupertinoNavigationBar", "desc": "iOS风格的导航栏. 通常和CupertinoPageScaffold一起使用。"});
    funcLists.add({"name": "CupertinoTabBar", "action": "/Cupertino/CupertinoTabBar", "desc": "iOS风格的底部选项卡。 通常和CupertinoTabScaffold一起使用。"});
    funcLists.add({"name": "CupertinoPageScaffold", "action": "/Cupertino/CupertinoPageScaffold", "desc": "一个iOS风格的页面的基本布局结构。包含内容和导航栏。"});
    funcLists.add({"name": "CupertinoTabScaffold", "action": "/Cupertino/CupertinoTabScaffold", "desc": "标签式iOS应用程序的结构。将选项卡栏放在内容选项卡之上。"});
    funcLists.add({"name": "CupertinoTabView", "action": "/Cupertino/CupertinoTabView", "desc": "支持选项卡间并行导航项卡的根内容。通常与CupertinoTabScaffolde一起使用。"});

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
                  },
                );
              }
          ),
        ),
      ),
    );
  }
}