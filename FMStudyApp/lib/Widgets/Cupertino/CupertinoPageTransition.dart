import 'package:flutter/cupertino.dart';

class FMCupertinoPageTransitionVC extends StatefulWidget{
  @override
  FMCupertinoPageTransitionState createState() => FMCupertinoPageTransitionState();
}

class FMCupertinoPageTransitionState extends State <FMCupertinoPageTransitionVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoPageTransition"),
      ),
      child: ListView(
        children: [

        ],
      ),
    );
  }

  CupertinoPageTransition _cupertinoPageTransition(){

  }
}