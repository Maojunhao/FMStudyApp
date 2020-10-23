import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMCupertinoActivityIndicatorVC extends StatefulWidget{
  @override
  FMCupertinoActivityIndicatorState createState() => FMCupertinoActivityIndicatorState();
}

class FMCupertinoActivityIndicatorState extends State <FMCupertinoActivityIndicatorVC>{

  Timer _timer;
  double _progress = 0;

  @override
  void initState(){
    super.initState();

    _timer = Timer.periodic(Duration(milliseconds: 300), (timer) {
      _progress += 0.1;
      if (_progress > 1) { _progress = 0; }
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoActivityIndicator"),
      ),
      child: ListView(
        children: [
          Padding(padding: EdgeInsets.all(30)),
          _cupertinoActivityIndicator(true),
          Padding(padding: EdgeInsets.all(30)),
          _cupertinoActivityIndicator(false),
          Padding(padding: EdgeInsets.all(30)),
          _activityIndicator()
        ],
      ),
    );
  }

  CupertinoActivityIndicator _cupertinoActivityIndicator(animating){
    return CupertinoActivityIndicator(
      animating: animating,
      radius: 30,
    );
  }

  CupertinoActivityIndicator _activityIndicator(){
    return CupertinoActivityIndicator.partiallyRevealed(
      radius: 40,
      progress: _progress,
    );
  }
}
