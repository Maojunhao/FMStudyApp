import 'package:flutter/cupertino.dart';

class FMCupertinoDialogActionVC extends StatefulWidget{
  @override
  FMCupertinoDialogActionState createState() => FMCupertinoDialogActionState();
}

class FMCupertinoDialogActionState extends State <FMCupertinoDialogActionVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoActivityIndicator"),
      ),
      child: ListView(
        children: [

        ],
      ),
    );
  }
}