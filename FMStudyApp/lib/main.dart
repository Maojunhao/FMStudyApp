import 'package:flutter/material.dart';
import 'package:FMStudyApp/FMRouteManager.dart';

void main() {
  // runApp(FMMaterialAppVC());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FMRouteManager manager = FMRouteManager();
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: (setting){
        print("test = $setting");
        return manager.routeWithSetting(setting);
      },
      onUnknownRoute: (setting){
        return manager.unknowRouteWithSetting(setting);
      },
    );
  }
}

