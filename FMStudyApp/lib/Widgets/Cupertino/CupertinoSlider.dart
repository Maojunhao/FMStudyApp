import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FMCupertinoSliderVC extends StatefulWidget{
  @override
  FMCupertinoSliderState createState() => FMCupertinoSliderState();
}

class FMCupertinoSliderState extends State <FMCupertinoSliderVC> {
  double sliderValue = 0.0;
  String sliderText = "还没操作";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoActivityIndicator"),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text("默认样式",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            CupertinoSlider(value: 0.3, onChanged: null),
            Padding(padding: EdgeInsets.all(20),
              child: Text("自定义颜色",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            _cupertinoSlider(),
            Text("$sliderText",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }

  CupertinoSlider _cupertinoSlider(){
    return CupertinoSlider(
      value: sliderValue,
      activeColor: Colors.yellow,
      thumbColor: Colors.red,
      onChanged: (value){
        print("onChanged : $value");
        updateSlider(value, "onChanged : $value");
      },
      onChangeStart: (value){
        print("onChangeStart : $value");
        // updateSlider(value, "onChangeStart : $value");
      },
      onChangeEnd: (value){
        print("onChangeEnd : $value");
        updateSlider(value, "onChangeEnd : $value");
      },
    );
  }

  void updateSlider(value, text){
    sliderValue = value;
    sliderText = text;

    setState(() {

    });
  }
}