import 'package:flutter/cupertino.dart';

class FMCupertinoNavigationBarVC extends StatefulWidget{
  @override
  FMCupertinoNavigationBarState createState() => FMCupertinoNavigationBarState();
}

class FMCupertinoNavigationBarState extends State <FMCupertinoNavigationBarVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: _cupertinoNavigationBar(),
      child: SafeArea(child: Center()),
    );
  }
  
  CupertinoNavigationBar _cupertinoNavigationBar(){
    return CupertinoNavigationBar(
      middle: Text("FMCupertinoNavigationBar"),
    );
  }
}