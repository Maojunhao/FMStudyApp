import 'dart:async';

import 'package:flutter/material.dart';

class FMLinearProgressIndicatorVC extends StatefulWidget {
  @override
  FMLinearProgressIndicatorState createState() => FMLinearProgressIndicatorState();
}

class FMLinearProgressIndicatorState extends State <FMLinearProgressIndicatorVC> {

  double _count = 0;
  Timer _timer;

  @override
  void initState(){
    super.initState();

    initTimer();
  }

  void initTimer(){
    // 一直轮播的定时器
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      _count += 0.1;
      if (_count > 100) { _count = 0; }
      setState(() {

      });
    });
  }

  @override
  void dispose(){
    // 页面销毁时一定要 cancel 掉定时器，不然会一直执行
    _timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("LinearProgressIndicator"),),
      body: _column(),
    );
  }

  Column _column(){
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(20), child: Text("一直动的进度条"),),
        LinearProgressIndicator(),
        Padding(padding: EdgeInsets.all(20)),
        Container(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(),
        ),
        Padding(padding: EdgeInsets.all(20), child: Text("自定义样式与进度的进度条"),),
        _linearProgressIndicator(),
        Padding(padding: EdgeInsets.all(20)),
        Container(
          width: 100,
          height: 100,
          child: _circularProgressIndicator(),
        ),
      ],
    );
  }

  LinearProgressIndicator _linearProgressIndicator(){
    return LinearProgressIndicator(
      value: _count/100.0, // 当前进度
      backgroundColor: Colors.yellow, // 进度条背景色
      valueColor: AlwaysStoppedAnimation<Color>(Colors.red), // 进度条当前进度颜色
      minHeight: 10, // 最小宽度
    );
  }

  CircularProgressIndicator _circularProgressIndicator(){
    return CircularProgressIndicator(
      value: _count/100.0, // 当前进度
      strokeWidth: 10, // 最小宽度
      backgroundColor: Colors.yellow, // 进度条背景色
      valueColor: AlwaysStoppedAnimation<Color>(Colors.red), // 进度条当前进度颜色
    );
  }
}