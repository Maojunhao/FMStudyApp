import 'package:flutter/cupertino.dart';

class FMCupertinoTabScaffoldVC extends StatefulWidget{
  @override
  FMCupertinoTabScaffoldState createState() => FMCupertinoTabScaffoldState();
}

class FMCupertinoTabScaffoldState extends State <FMCupertinoTabScaffoldVC> {
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