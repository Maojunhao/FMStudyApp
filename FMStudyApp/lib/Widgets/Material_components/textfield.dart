import 'package:flutter/material.dart';

class FMTextFieldVC extends StatefulWidget{
  @override
  FMTextFieldState createState() => FMTextFieldState();
}

class FMTextFieldState extends State<FMTextFieldVC>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: _listView(),
    );
  }

  ListView _listView(){
    return ListView(
      children: [
        _textField(),
      ],
    );
  }

  TextField _textField(){
    return TextField();
  }
}