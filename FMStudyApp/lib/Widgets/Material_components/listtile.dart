import 'package:flutter/material.dart';

class FMListTileVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ListTile"),),
      body: ListView(
        children: [
          _normalListTile(true),
          _normalListTile(false),
          _shapeListTile(true),
          _shapeListTile(false),
        ],
      ),
    );
  }
  
  ListTile _normalListTile(bool selected,){
    return ListTile(
      leading: Icon(Icons.ac_unit), // 左侧组件
      title: Text("title"), // 标题
      // 副标题
      subtitle: Text("subTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitlesubTitle"),
      trailing: Icon(Icons.access_alarm), // 右侧组件
      isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
      dense: false, // 是否使用缩小布局
      visualDensity: VisualDensity(horizontal: -4), // 紧凑程度
      contentPadding: EdgeInsets.all(20), // content 内间距
      enabled: true, // 是否可以交互
      // 点击事件回调
      onTap: (){
        print("onTap");
      },
      // 长按事件回调
      onLongPress: (){
        print("onLongPress");
      },
      // 是否选中
      selected: selected,
    );
  }

  ListTile _shapeListTile(bool selected,){
    return ListTile(
      // 左侧组件
      leading: Container(
        width: 100,
        color: Colors.yellow,
        child: Image.network("http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg"),
      ),
      title: Row(
        children: [
          Icon(Icons.title),
          Text("title"),
        ],
      ), // 标题
      // 副标题
      subtitle: Row(
        children: [
          Icon(Icons.content_copy),
          Text("subTitle"),
        ],
      ),
      // 右侧组件
      trailing: Container(
        width: 100,
        child: Image.network("http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg"),
      ),
      isThreeLine: true, // 是否三行，其实没啥用，但是设置为 true 时，subTitle 不可以为空
      dense: false, // 是否使用缩小布局
      visualDensity: VisualDensity(horizontal: -4), // 紧凑程度
      contentPadding: EdgeInsets.all(20), // content 内间距
      enabled: true, // 是否可以交互
      // 形状，这里边缘颜色无效，再点击时阴影可以看出来效果
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
      // 点击事件回调
      onTap: (){
        print("onTap");
      },
      // 长按事件回调
      onLongPress: (){
        print("onLongPress");
      },
      // 是否选中
      selected: selected,
    );
  }
}