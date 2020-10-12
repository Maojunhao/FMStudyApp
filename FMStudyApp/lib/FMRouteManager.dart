import 'package:FMStudyApp/Widgets/Material_components/buttonbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/checkbox.dart';
import 'package:FMStudyApp/Widgets/Material_components/datepicker.dart';
import 'package:FMStudyApp/Widgets/Material_components/flatButton.dart';
import 'package:FMStudyApp/Widgets/Material_components/floatingActionButton.dart';
import 'package:FMStudyApp/Widgets/Material_components/appbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/bottomnavigationbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/drawer.dart';
import 'package:FMStudyApp/Widgets/Material_components/focusnode.dart';
import 'package:FMStudyApp/Widgets/Material_components/iconbutton.dart';
import 'package:FMStudyApp/Widgets/Material_components/materialapp.dart';
import 'package:FMStudyApp/Widgets/Material_components/popupmenubutton.dart';
import 'package:FMStudyApp/Widgets/Material_components/radio.dart';
import 'package:FMStudyApp/Widgets/Material_components/scaffold.dart';
import 'package:FMStudyApp/Widgets/Material_components/slider.dart';
import 'package:FMStudyApp/Widgets/Material_components/switch.dart';
import 'package:FMStudyApp/Widgets/Material_components/tabbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/tabbarview.dart';
import 'package:FMStudyApp/Widgets/Material_components/textfield.dart';
import 'package:FMStudyApp/Widgets/Material_components/widgetsapp.dart';

import 'package:FMStudyApp/home/home.dart';
import 'package:flutter/material.dart';

class FMRouteManager {
  // 路由总表
  Map <String, WidgetBuilder> _routeMap = {};
  // 拦截参数，用来拦截路由表，进行不同操作
  final _isLogin = true;
  final _otherJudge = true;

  FMRouteManager(){
    _routeMap.addAll(mapForHome());
    _routeMap.addAll(mapForMaterialComponents());
  }

  // 自定义路由
  MaterialPageRoute routeWithSetting(RouteSettings setting){
    // 拦截未登录路由
    if (!_isLogin) {
      return loginRoute(setting);
    }
    // 拦截其他情况路由
    if (!_otherJudge) {
      return ohterRoute(setting);
    }

    print(setting);

    WidgetBuilder builder = _routeMap[setting.name];
    if(builder != null) {
      return MaterialPageRoute(builder: builder);
    }
    return MaterialPageRoute(builder: (context) => Scaffold());
  }

  // 未知路由
  MaterialPageRoute unknowRouteWithSetting(RouteSettings setting){
    return MaterialPageRoute(builder: (context) => Scaffold());
  }

  // 登录路由
  MaterialPageRoute loginRoute(RouteSettings setting){
    // 这里可以替换为自定义的 Login 页面
    return MaterialPageRoute(builder: (context) => Scaffold());
  }

  // 拦截其他情况路由
  MaterialPageRoute ohterRoute(RouteSettings setting){
    // 这里可以替换为自定义的 Login 页面
    return MaterialPageRoute(builder: (context) => Scaffold());
  }

  // 首页表
  Map <String, WidgetBuilder> mapForHome(){
    return {
      "/": (BuildContext context) => FMHomeVC(),
    };
  }

  // MaterialComponents 表
  Map <String, WidgetBuilder> mapForMaterialComponents(){
    return {
      "/MaterialComponents/Scaffold": (BuildContext context) => FMScaffoldVC(),
      "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      "/MaterialComponents/BottomNavigationBar": (BuildContext context) => FMBottomNavBarVC(),

      "/MaterialComponents/TabBar": (BuildContext context) => FMTabBarVC(),
      "/MaterialComponents/TabBarView": (BuildContext context) => FMTabbarViewVC(),
      "/MaterialComponents/MaterialApp": (BuildContext context) => FMMaterialAppVC(),
      "/MaterialComponents/WidgetsApp": (BuildContext context) => FMWidgetsAppVC(),
      "/MaterialComponents/Drawer": (BuildContext context) => FMDrawerVC(),
      "/MaterialComponents/FloatingActionButton": (BuildContext context) => FMFloatingActionButtonVC(),
      "/MaterialComponents/FlatButton": (BuildContext context) => FMFlatButtonVC(),
      "/MaterialComponents/IconButton": (BuildContext context) => FMIconButtonVC(),
      "/MaterialComponents/PopupMenuButton": (BuildContext context) => FMPopupMenuButtonVC(),
      "/MaterialComponents/ButtonBar": (BuildContext context) => FMButtonBarVC(),
      "/MaterialComponents/TextField": (BuildContext context) => FMTextFieldVC(),
      "/MaterialComponents/FocusNode": (BuildContext context) => FMFocusNodeVC(),
      "/MaterialComponents/CheckBox": (BuildContext context) => FMCheckBoxVC(),
      "/MaterialComponents/Radio": (BuildContext context) => FMRadioVC(),
      "/MaterialComponents/Switch": (BuildContext context) => FMSwitchVC(),
      "/MaterialComponents/Slider": (BuildContext context) => FMSliderVC(),
      "/MaterialComponents/DatePicker": (BuildContext context) => FMDatePickerVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
    };
  }
}
