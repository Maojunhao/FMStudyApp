import 'package:flutter/material.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/container.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/row.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/column.dart';

class FMBaseWidgetVC extends StatefulWidget {
  final func;
  const FMBaseWidgetVC({Key key, @required this.func}) : super(key: key);

  @override
  FMBaseWidgetState createState() => FMBaseWidgetState();
}

class FMBaseWidgetState extends State<FMBaseWidgetVC>{
  var funcLists = [];

  void initState(){
    super.initState();

    initData();
  }

  void initData(){
    funcLists.add({"name": "Container", "desc": "一个拥有绘制、定位、调整大小的 widget。"});
    funcLists.add({"name": "Row", "desc": "在水平方向上排列子widget的列表。 "});
    funcLists.add({"name": "Column", "desc": "在垂直方向上排列子widget的列表。"});
    funcLists.add({"name": "Image", "desc": "一个显示图片的widget。"});
    funcLists.add({"name": "Text", "desc": "单一格式的文本。"});
    funcLists.add({"name": "Icon", "desc": "A Material Design icon. "});
    funcLists.add({"name": "RaisedButton", "desc": "Material Design中的button， 一个凸起的材质矩形按钮。"});
    funcLists.add({"name": "Scaffold", "desc": "Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。"});
    funcLists.add({"name": "Appbar", "desc": "一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成。"});
    funcLists.add({"name": "FlutterLogo", "desc": "Flutter logo, 以widget形式. 这个widget遵从IconTheme。"});
    funcLists.add({"name": "Placeholder", "desc": "一个绘制了一个盒子的的widget，代表日后有widget将会被添加到该盒子中 。"});

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
                      if (func["name"] == "Container") {
                        return FMContainerVC();
                      } else if (func["name"] == "Row") {
                        return FMRowVC();
                      } else if (func["name"] == "Column") {
                        return FMColumnVC();
                      }
                      return FMContainerVC();
                    }
                  ));
                },
              );
            }
          ),
        ),
      ),
    );
  }
}