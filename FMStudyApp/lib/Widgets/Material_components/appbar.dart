import 'package:flutter/material.dart';

class FMAppBarVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _appBar(),
      // drawer: Drawer(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      toolbarHeight: 90,
      // titleSpacing: 40,
      toolbarOpacity: 0.5,
      title: Text(
        'AppBar',
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      actions: _actions(),
      backgroundColor: Colors.grey,
      brightness: Brightness.light,
      // iconTheme: _iconThemeData(),
      // actionsIconTheme: _iconThemeData(),
    );
  }

  List<Widget> _actions(){
    return [
      Container(
        width: 50,
        color: Colors.green,
        child: Icon(Icons.image),
      ),
      Container(
        width: 50,
        color: Colors.greenAccent,
        child: Icon(Icons.accessible),
      ),
      Container(
        width: 50,
        color: Colors.grey,
        child: Icon(Icons.backspace),
      ),
      Container(
        width: 50,
        color: Colors.yellowAccent,
        child: Icon(Icons.battery_unknown),
      ),
    ];
  }

  FlexibleSpaceBar _flexibleSpaceBar(){
    return FlexibleSpaceBar(
      title: Text('FlexibleSpaceBar'),
    );
  }

  Container _leading(){
    return Container(
      width: 50,
      color: Colors.yellow,
      child: Icon(Icons.favorite),
    );
  }

  PreferredSize _preferredSize(){
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: Container(
        color: Colors.greenAccent,
        height: 60,
      ),
    );
  }

  IconThemeData _iconThemeData(){
    return IconThemeData(
      color: Colors.red,
      size: 40,
      opacity: 0.5,
    );
  }


}
