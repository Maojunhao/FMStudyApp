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
    );
  }
}