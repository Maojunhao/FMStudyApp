import 'package:flutter/cupertino.dart';

class FMCupertinoDialogVC extends StatefulWidget{
  @override
  FMCupertinoDialogState createState() => FMCupertinoDialogState();
}

class FMCupertinoDialogState extends State <FMCupertinoDialogVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoDialog"),
      ),
      child: SafeArea(child: Center(
        child: Text("CupertinoDialog 已弃用，使用 CupertinoAlertDialog 替代"),
      )),
    );
  }

  CupertinoDialog _cupertinoDialog(){
    return CupertinoDialog(
      child: Text("弃用了"),
    );
  }
}