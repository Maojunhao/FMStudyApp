import 'package:flutter/material.dart';

class FMSwitchVC extends StatefulWidget{
  @override
  FMSwitchState createState() => FMSwitchState();
}

class FMSwitchState extends State <FMSwitchVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Switch"),),
      body: Center(
        child: _switch(),
      ),
    );
  }

  bool switchValue = true;

  Switch _switch(){
    return Switch(
        value: switchValue,
        activeColor: Colors.red,
        activeTrackColor: Colors.blue,
        inactiveThumbColor: Colors.yellow,
        inactiveTrackColor: Colors.cyan,

        activeThumbImage: NetworkImage("https://activeThumbImage"),
        inactiveThumbImage: NetworkImage("https://inactiveThumbImage"),

        // activeThumbImage: AssetImage('images/base_widgets/bear_white.png'),
        // inactiveThumbImage: AssetImage('images/base_widgets/bear_brown.png'),

        onActiveThumbImageError: (error, stack){
          print("onActiveThumbImageError = $error");
        },

        onInactiveThumbImageError: (error, stack){
          print("onInactiveThumbImageError = $error");
        },

        onChanged: (value){
          switchValue = !switchValue;
          print(value);
          setState(() {

          });
        }
    );
  }
}