import 'package:flutter/cupertino.dart';

class FMCupertinoTabViewVC extends StatefulWidget{
  @override
  FMCupertinoTabViewState createState() => FMCupertinoTabViewState();
}

class FMCupertinoTabViewState extends State <FMCupertinoTabViewVC> {
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