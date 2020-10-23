import 'package:flutter/cupertino.dart';

class FMCupertinoPageScaffoldVC extends StatefulWidget{
  @override
  FMCupertinoPageScaffoldrState createState() => FMCupertinoPageScaffoldrState();
}

class FMCupertinoPageScaffoldrState extends State <FMCupertinoPageScaffoldVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoPageScaffold"),
      ),
      child: ListView(
        children: [

        ],
      ),
    );
  }
}