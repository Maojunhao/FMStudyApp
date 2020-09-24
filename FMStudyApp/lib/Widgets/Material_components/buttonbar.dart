import 'package:flutter/material.dart';

class FMButtonBarVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonBar"),
      ),
      body: _buttonBar(),
    );
  }

  ButtonBar _buttonBar(){
    return ButtonBar(
      // overflowDirection: VerticalDirection.down,
      overflowButtonSpacing: 20,
      buttonPadding: EdgeInsets.all(20),
      // buttonHeight: 100,
      // buttonMinWidth: 200,
      alignment: MainAxisAlignment.start,
      buttonTextTheme: ButtonTextTheme.accent,
      children: [
        _raisedButton(),
        _flatButton(),
        _raisedButton(),
        _flatButton(),
        _raisedButton(),
        _flatButton(),
      ],
    );
  }

  RaisedButton _raisedButton(){
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text("RaisedButton"),
    );
  }

  FlatButton _flatButton(){
    return FlatButton(
      onPressed: (){},
      child: Text("FlatButton"),
      textColor: Colors.white,
      color: Colors.red,
    );
  }
}