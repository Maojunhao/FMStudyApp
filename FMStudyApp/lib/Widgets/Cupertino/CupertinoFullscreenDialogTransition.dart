import 'package:flutter/cupertino.dart';

class FMCupertinoFullscreenDialogTransitionVC extends StatefulWidget{
  @override
  FMCupertinoFullscreenDialogTransitionState createState() => FMCupertinoFullscreenDialogTransitionState();
}

class FMCupertinoFullscreenDialogTransitionState extends State <FMCupertinoFullscreenDialogTransitionVC> {
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