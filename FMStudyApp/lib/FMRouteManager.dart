/*
* 基础组件
*/

import 'package:FMStudyApp/Widgets/BaseWidget/column.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/container.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/icon.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/image.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/raisedbutton.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/row.dart';
import 'package:FMStudyApp/Widgets/BaseWidget/text.dart';

/*
 * Material Components
 */
import 'package:FMStudyApp/Widgets/Material_components/Dialog.dart';
import 'package:FMStudyApp/Widgets/Material_components/bottomsheet.dart';
import 'package:FMStudyApp/Widgets/Material_components/buttonbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/card.dart';
import 'package:FMStudyApp/Widgets/Material_components/checkbox.dart';
import 'package:FMStudyApp/Widgets/Material_components/chip.dart';
import 'package:FMStudyApp/Widgets/Material_components/datatable.dart';
import 'package:FMStudyApp/Widgets/Material_components/datepicker.dart';
import 'package:FMStudyApp/Widgets/Material_components/divider.dart';
import 'package:FMStudyApp/Widgets/Material_components/expansionpanel.dart';
import 'package:FMStudyApp/Widgets/Material_components/flatButton.dart';
import 'package:FMStudyApp/Widgets/Material_components/floatingActionButton.dart';
import 'package:FMStudyApp/Widgets/Material_components/appbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/bottomnavigationbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/drawer.dart';
import 'package:FMStudyApp/Widgets/Material_components/focusnode.dart';
import 'package:FMStudyApp/Widgets/Material_components/iconbutton.dart';
import 'package:FMStudyApp/Widgets/Material_components/linearprogressindicator.dart';
import 'package:FMStudyApp/Widgets/Material_components/listtile.dart';
import 'package:FMStudyApp/Widgets/Material_components/materialapp.dart';
import 'package:FMStudyApp/Widgets/Material_components/popupmenubutton.dart';
import 'package:FMStudyApp/Widgets/Material_components/radio.dart';
import 'package:FMStudyApp/Widgets/Material_components/scaffold.dart';
import 'package:FMStudyApp/Widgets/Material_components/slider.dart';
import 'package:FMStudyApp/Widgets/Material_components/snackbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/stepper.dart';
import 'package:FMStudyApp/Widgets/Material_components/switch.dart';
import 'package:FMStudyApp/Widgets/Material_components/tabbar.dart';
import 'package:FMStudyApp/Widgets/Material_components/tabbarview.dart';
import 'package:FMStudyApp/Widgets/Material_components/textfield.dart';
import 'package:FMStudyApp/Widgets/Material_components/tooltip.dart';
import 'package:FMStudyApp/Widgets/Material_components/widgetsapp.dart';

/*
* 根目录
*/
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
    _routeMap.addAll(mapForBaseWidgets());
    _routeMap.addAll(mapForMaterialComponents());
    _routeMap.addAll(mapForCupertino());
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

  // BaseWidgets 表
  Map <String, WidgetBuilder> mapForBaseWidgets(){
    return {
      "/BaseWidgets/Container": (BuildContext context) => FMContainerVC(),
      "/BaseWidgets/Row": (BuildContext context) => FMRowVC(),
      "/BaseWidgets/Column": (BuildContext context) => FMColumnVC(),
      "/BaseWidgets/Image": (BuildContext context) => FMImageVC(),
      "/BaseWidgets/Text": (BuildContext context) => FMTextVC(),
      "/BaseWidgets/Icon": (BuildContext context) => FMIconVC(),
      "/BaseWidgets/RaisedButton": (BuildContext context) => FMRaisedButtonVC(),
      "/BaseWidgets/Scaffold": (BuildContext context) => FMScaffoldVC(),
      "/BaseWidgets/Appbar": (BuildContext context) => FMAppBarVC(),
      // "/BaseWidgets/FlutterLogo": (BuildContext context) => FMContainerVC(),
      // "/BaseWidgets/Image": (BuildContext context) => FMImageVC(),
      // "/BaseWidgets/Image": (BuildContext context) => FMImageVC(),
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
      "/MaterialComponents/Dialog": (BuildContext context) => FMDialogVC(),
      "/MaterialComponents/BottomSheet": (BuildContext context) => FMBottomSheetVC(),
      "/MaterialComponents/ExpansionPanel": (BuildContext context) => FMExpansionPanelVC(),
      "/MaterialComponents/SnackBar": (BuildContext context) => FMSnackBarVC(),
      "/MaterialComponents/Chip": (BuildContext context) => FMChipVC(),
      "/MaterialComponents/ToolTip": (BuildContext context) => FMToolTipVC(),
      "/MaterialComponents/DataTable": (BuildContext context) => FMDataTableVC(),
      "/MaterialComponents/Card": (BuildContext context) => FMCardVC(),
      "/MaterialComponents/LinearProgressIndicator": (BuildContext context) => FMLinearProgressIndicatorVC(),
      "/MaterialComponents/ListTile": (BuildContext context) => FMListTileVC(),
      "/MaterialComponents/Stepper": (BuildContext context) => FMStepperVC(),
      "/MaterialComponents/Divider": (BuildContext context) => FMDividerVC(),
    };
  }

  // Cupertino
  Map <String, WidgetBuilder> mapForCupertino(){
    return {
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
      // "/MaterialComponents/AppBar": (BuildContext context) => FMAppBarVC(),
    };
  }
}
