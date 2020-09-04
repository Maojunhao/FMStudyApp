import 'package:flutter/material.dart';
import 'package:FMStudyApp/home/home.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/basewidget_vc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FMHomeVC(),
      initialRoute: '/',
      routes: {
        '/home': (BuildContext context) => FMHomeVC(),
        '/home/basewidget': (BuildContext context) => BaseWidgetVC(),
      },
    );
  }
}