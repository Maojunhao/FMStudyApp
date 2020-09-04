import 'package:flutter/material.dart';

class BaseWidgetVC extends StatefulWidget {
  final func;
  const BaseWidgetVC({Key key, @required this.func}) : super(key: key);

  @override
  BaseWidgetState createState() => BaseWidgetState();
}

class BaseWidgetState extends State<BaseWidgetVC>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("${widget.func["name"]}"),
        ),
        body: Center(
          child: Text("${widget.func["desc"]}"),
        ),
      ),
    );
  }
}