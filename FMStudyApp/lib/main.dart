import 'package:flutter/material.dart';
import 'package:FMStudyApp/home/home.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/basewidget_vc.dart';
import 'package:FMStudyApp/Widgets/Material_components/materialapp.dart';

void main() {
  // runApp(FMMaterialAppVC());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: FMHomeVC(),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => FMHomeVC(),
      },
      // onGenerateRoute: (setting){
      //   print("setting = ${setting}");
      //   return MaterialPageRoute(builder: (context) => Scaffold());
      // },

    );
  }
}

