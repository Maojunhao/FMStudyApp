import 'package:flutter/material.dart';

class FMIconButtonVC extends StatefulWidget{
  @override
  FMIconButtonState createState() => FMIconButtonState();
}

class FMIconButtonState extends State <FMIconButtonVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("IconButton"),
      ),
      body: _listView(),
    );
  }

  ListView _listView(){
    return ListView(
      children: [
        _normalIconButton(),
      ],
    );
  }

  IconButton _normalIconButton(){
    return IconButton(
      icon: Icon(Icons.ac_unit),
      iconSize: 100,
      onPressed: (){},
      padding: EdgeInsets.all(50),
      // color: Colors.red,
      // disabledColor: Colors.black,
      // splashColor: Colors.yellow,
      // highlightColor: Colors.green,
    );
  }
}