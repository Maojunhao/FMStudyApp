import 'package:flutter/material.dart';

class FMLayoutVC extends StatefulWidget {
  final func;
  const FMLayoutVC({Key key, @required this.func}) : super(key: key);

  @override
  FMLayoutState createState() =>  FMLayoutState();
}

class  FMLayoutState extends State<FMLayoutVC>{
  var funcLists = [];

  void initState(){
    super.initState();

    initData();
  }

  void initData(){

    // 单个子元素布局
    funcLists.add({"name": "Container", "action": "", "desc": "一个拥有绘制、定位、调整大小的 widget。 "});
    funcLists.add({"name": "Padding", "action": "", "desc": "一个widget, 会给其子widget添加指定的填充 "});
    funcLists.add({"name": "Center", "action": "", "desc": "将其子widget居中显示在自身内部的widget "});
    funcLists.add({"name": "Align", "action": "", "desc": "一个widget，它可以将其子widget对齐，并可以根据子widget的大小自动调整大小。"});
    funcLists.add({"name": "FittedBox", "action": "", "desc": "按自己的大小调整其子widget的大小和位置。"});
    funcLists.add({"name": "AspectRatio", "action": "", "desc": "一个widget，试图将子widget的大小指定为某个特定的长宽比 "});
    funcLists.add({"name": "ConstrainedBox", "action": "", "desc": "对其子项施加附加约束的widget "});
    funcLists.add({"name": "Baseline", "action": "", "desc": "根据子项的基线对它们的位置进行定位的widget。"});
    funcLists.add({"name": "FractionallySizedBox", "action": "", "desc": "一个widget，它把它的子项放在可用空间的一小部分。关于布局算法的更多细节，见RenderFractionallySizedOverflowBox "});
    funcLists.add({"name": "IntrinsicHeight", "action": "", "desc": "一个widget，它将它的子widget的高度调整其本身实际的高度 "});
    funcLists.add({"name": "IntrinsicWidth", "action": "", "desc": "一个widget，它将它的子widget的宽度调整其本身实际的宽度 "});
    funcLists.add({"name": "LimitedBox", "action": "", "desc": "一个当其自身不受约束时才限制其大小的盒子 "});
    funcLists.add({"name": "Offstage", "action": "", "desc": "一个布局widget，可以控制其子widget的显示和隐藏。 "});
    funcLists.add({"name": "OverflowBox", "action": "", "desc": "对其子项施加不同约束的widget，它可能允许子项溢出父级。 "});
    funcLists.add({"name": "SizedBox", "action": "", "desc": "一个特定大小的盒子。这个widget强制它的孩子有一个特定的宽度和高度。如果宽度或高度为NULL，则此widget将调整自身大小以匹配该维度中的孩子的大小。"});
    funcLists.add({"name": "SizedOverflowBox", "action": "", "desc": "一个特定大小的widget，但是会将它的原始约束传递给它的孩子，它可能会溢出。"});
    funcLists.add({"name": "Transform", "action": "", "desc": "在绘制子widget之前应用转换的widget。"});
    funcLists.add({"name": "CustomSingleChildLayout", "action": "", "desc": "一个自定义的拥有单个子widget的布局widget "});

    // 多个子元素布局
    funcLists.add({"name": "Row", "action": "", "desc": "在水平方向上排列子widget的列表。"});
    funcLists.add({"name": "Column", "action": "", "desc": "在垂直方向上排列子widget的列表。"});
    funcLists.add({"name": "Stack", "action": "/Layout/Stack", "desc": "可以允许其子widget简单的堆叠在一起 "});
    funcLists.add({"name": "IndexedStack", "action": "", "desc": "从一个子widget列表中显示单个孩子的Stack "});
    funcLists.add({"name": "Flow", "action": "", "desc": "一个实现流式布局算法的widget "});
    funcLists.add({"name": "Table", "action": "", "desc": "为其子widget使用表格布局算法的widget "});
    funcLists.add({"name": "Wrap", "action": "", "desc": "可以在水平或垂直方向多行显示其子widget。 "});
    funcLists.add({"name": "ListBody", "action": "", "desc": "一个widget，它沿着一个给定的轴，顺序排列它的子元素 "});
    funcLists.add({"name": "ListView", "action": "", "desc": "可滚动的列表控件。ListView是最常用的滚动widget，它在滚动方向上一个接一个地显示它的孩子。在纵轴上，孩子们被要求填充ListView。 "});
    funcLists.add({"name": "CustomMultiChildLayout", "action": "", "desc": "使用一个委托来对多个孩子进行设置大小和定位的小部件 "});

    // Layout Helpers
    funcLists.add({"name": "LayoutBuilder", "action": "", "desc": "构建一个可以依赖父窗口大小的widget树。"});

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