import 'package:flutter/material.dart';

class FMPopupMenuButtonVC extends StatefulWidget{
  @override
  FMPopupMenuButtonState createState() => FMPopupMenuButtonState();
}

class FMPopupMenuButtonState extends State <FMPopupMenuButtonVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("IconButton"),
        actions: [_popupMenuButton(context)],
      ),
    );
  }

  PopupMenuButton _popupMenuButton(BuildContext context){
    return PopupMenuButton(
      itemBuilder: (BuildContext context){
        return [
          PopupMenuItem(child: Text("DOTA"),value: "dota",height: 100,),
          PopupMenuItem(child: Text("英雄联盟"),value: ["盖伦", "皇子", "提莫"], enabled: false,),
          PopupMenuItem(child: Text("王者荣耀"),value: {"name":"王者荣耀"}, textStyle: TextStyle(color: Colors.red),),
        ];
      },
      onSelected: (Object object){
        print(object);
      },
      onCanceled: (){
        print("canceled");
      },
      initialValue: 1,
      color: Colors.yellow,
      icon: Icon(Icons.add),
      // child: Center(
      //   child: Text("游戏"),
      // ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          width: 2,
          color: Colors.red,
          style: BorderStyle.solid,
        ),
      ),
    );
  }
}