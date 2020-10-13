import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMDatePickerVC extends StatefulWidget{
  @override
  FMDatePickerState createState() => FMDatePickerState();
}

class FMDatePickerState extends State <FMDatePickerVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("DatePicker"),),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          _showDatePicker(context),
          _showDatePickerForYear(context),
          _showDatePickerForInput(context),
          _showDatePickerForTheme(context),
          _showTimePicker(context),

          Text("CalendarDatePicker day"),
          _calendarDatePicker(DatePickerMode.day),
          Text("CalendarDatePicker year"),
          _calendarDatePicker(DatePickerMode.year),

          Text("_cupertinoTimePicker - hms"),
          _cupertinoTimePicker(CupertinoTimerPickerMode.hms),
          Text("_cupertinoTimePicker - hm"),
          _cupertinoTimePicker(CupertinoTimerPickerMode.hm),
          Text("_cupertinoTimePicker - ms"),
          _cupertinoTimePicker(CupertinoTimerPickerMode.ms),

          Text("CupertinoDatePicker - dateAndTime"),
          _cupertinoDatePicker(CupertinoDatePickerMode.dateAndTime),
          Text("CupertinoDatePicker - date"),
          _cupertinoDatePicker(CupertinoDatePickerMode.date),
        ],
      ),
    );
  }

  RaisedButton _showDatePicker(context){
    return RaisedButton(
      child: Text("showDatePicker"),
      onPressed: (){
        showDatePicker(
            context: context,
            initialDate: DateTime.now(), // 初始化选中日期
            firstDate: DateTime(2020, 6),  // 开始日期
            lastDate: DateTime(2021, 6),  // 结束日期
            // initialEntryMode: DatePickerEntryMode.input,  // 日历弹框样式

            textDirection: TextDirection.ltr,  // 文字方向

            currentDate: DateTime(2020, 10, 20),  // 当前日期
            helpText: "helpText", // 左上方提示
            cancelText: "cancelText",  // 取消按钮文案
            confirmText: "confirmText",  // 确认按钮文案

            errorFormatText: "errorFormatText",  // 格式错误提示
            errorInvalidText: "errorInvalidText",  // 输入不在 first 与 last 之间日期提示

            fieldLabelText: "fieldLabelText",  // 输入框上方提示
            fieldHintText: "fieldHintText",  // 输入框为空时内部提示

            initialDatePickerMode: DatePickerMode.day, // 日期选择模式，默认为天数选择
            useRootNavigator: true, // 是否为根导航器
            // 设置不可选日期，这里将 2020-10-15，2020-10-16，2020-10-17 三天设置不可选
            selectableDayPredicate: (dayTime){
              if(dayTime == DateTime(2020, 10, 15) || dayTime == DateTime(2020, 10, 16) || dayTime == DateTime(2020, 10, 17)) {
                return false;
              }
              return true;
            }
        );
      },
    );
  }

  RaisedButton _showDatePickerForYear(context){
    return RaisedButton(
      child: Text("showDatePicker - YearMode"),
      onPressed: (){
        showDatePicker(
          context: context,
          initialDate: DateTime.now(), // 初始化选中日期
          firstDate: DateTime(2018, 6),  // 开始日期
          lastDate: DateTime(2025, 6),  // 结束日期
          currentDate: DateTime(2020, 10, 20),  // 当前日期
          helpText: "helpText", // 左上方提示
          cancelText: "cancelText",  // 取消按钮文案
          confirmText: "confirmText",  // 确认按钮文案

          initialDatePickerMode: DatePickerMode.year, // 日期选择模式，默认为天数选择
        );
      },
    );
  }

  RaisedButton _showDatePickerForInput(context){
    return RaisedButton(
      child: Text("showDatePicker - InputMode"),
      onPressed: (){
        showDatePicker(
            context: context,
            initialDate: DateTime.now(), // 初始化选中日期
            firstDate: DateTime(2020, 6),  // 开始日期
            lastDate: DateTime(2021, 6),  // 结束日期
            initialEntryMode: DatePickerEntryMode.input,  // 日历弹框样式

            textDirection: TextDirection.rtl,  // 文字方向

            currentDate: DateTime(2020, 10, 20),  // 当前日期
            helpText: "helpText", // 左上方提示
            cancelText: "cancelText",  // 取消按钮文案
            confirmText: "confirmText",  // 确认按钮文案

            errorFormatText: "errorFormatText",  // 格式错误提示
            errorInvalidText: "errorInvalidText",  // 输入不在 first 与 last 之间日期提示

            fieldLabelText: "fieldLabelText",  // 输入框上方提示
            fieldHintText: "fieldHintText",  // 输入框为空时内部提示

            initialDatePickerMode: DatePickerMode.day, // 日期选择模式，默认为天数选择
            useRootNavigator: true, // 是否为根导航器
            // 设置不可选日期，这里将 2020-10-15，2020-10-16，2020-10-17 三天设置不可选
            selectableDayPredicate: (dayTime){
              if(dayTime == DateTime(2020, 10, 15) || dayTime == DateTime(2020, 10, 16) || dayTime == DateTime(2020, 10, 17)) {
                return false;
              }
              return true;
            }
        );
      },
    );
  }

  RaisedButton _showDatePickerForTheme(context){
    return RaisedButton(
      child: Text("showDatePicker - InputMode"),
      onPressed: (){
        showDatePicker(
            context: context,
            builder: (context, child) {
              return Theme(
                data: ThemeData(
                  cardColor: Colors.red,
                  brightness: Brightness.dark,
                ),
                child: child,
              );
            },
          initialDate: DateTime.now(), // 初始化选中日期
          firstDate: DateTime(2018, 6),  // 开始日期
          lastDate: DateTime(2025, 6),  // 结束日期
          currentDate: DateTime(2020, 10, 20),  // 当前日期
          helpText: "helpText", // 左上方提示
          cancelText: "cancelText",  // 取消按钮文案
          confirmText: "confirmText",  // 确认按钮文案

          initialDatePickerMode: DatePickerMode.year, // 日期选择模式，默认为天数选择
        );
      },
    );
  }

  RaisedButton _showTimePicker(context){
    return RaisedButton(
      child: Text("showTimePicker - InputMode"),
      onPressed: (){
        showTimePicker(
          context: context,
          initialTime: TimeOfDay(hour: 10, minute: 30),
          initialEntryMode: TimePickerEntryMode.input,
          cancelText: "cancelText",
          helpText: "helpText",
          confirmText: "confirmText"
        );
      },
    );
  }

  CalendarDatePicker _calendarDatePicker(DatePickerMode mode){
    return CalendarDatePicker(
      initialDate: DateTime.now(), // 初始化选中日期
      currentDate: DateTime(2020, 10, 18),
      firstDate: DateTime(2020, 9, 10),  // 开始日期
      lastDate: DateTime(2022, 9, 10),  // 结束日期
      initialCalendarMode: mode, // 日期选择样式
      // 选中日期改变回调函数
      onDateChanged: (dateTime){
        print("onDateChanged $dateTime");
      },
      // 月份改变回调函数
      onDisplayedMonthChanged: (dateTime){
        print("onDisplayedMonthChanged $dateTime");
      },
      // 筛选日期可不可点回调函数
      selectableDayPredicate: (dayTime){
        if(dayTime == DateTime(2020, 10, 15) || dayTime == DateTime(2020, 10, 16) || dayTime == DateTime(2020, 10, 17)) {
          return false;
        }
        return true;
      }
    );
  }

  CupertinoTimerPicker _cupertinoTimePicker(CupertinoTimerPickerMode mode){
    return CupertinoTimerPicker(
      mode: mode, // 展示模式，默认为 hms
      initialTimerDuration: Duration(hours: 5, minutes: 10), // 默认选中事时间
      minuteInterval: 10, // 分钟间隔
      secondInterval: 10, // 秒间隔
      alignment: Alignment.center, // 对齐方式
      backgroundColor: Colors.yellow, // 背景颜色
      // 滑动后，每次改变回调函数
      onTimerDurationChanged: (dayTime){
        print("onTimerDurationChanged $dayTime");
      },
    );
  }

  Container _cupertinoDatePicker(CupertinoDatePickerMode mode){
    return Container(
      height: 200,
      child: CupertinoDatePicker(
        mode: mode, // 展示模式, 默认为 dateAndTime
        initialDateTime: DateTime(2020, 10, 10), // 默认选中日期
        minimumDate: DateTime(2020, 10, 10), // 最小可选日期
        maximumDate: DateTime(2021, 10, 10), // 最大可选日期

        minimumYear: 2020, // 最小可选年份
        maximumYear: 2021, // 最大可选年份

        minuteInterval: 10, // 分钟间隔

        use24hFormat: true, // 是否采用24小时制
        backgroundColor: Colors.cyan, // 背景色

        onDateTimeChanged: (dayTime){
          print("onDateTimeChanged $dayTime");
        },
      ),
    );
  }
}