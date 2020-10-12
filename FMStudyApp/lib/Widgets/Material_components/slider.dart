import 'package:flutter/material.dart';

class FMSliderVC extends StatefulWidget{
  @override
  FMSliderState createState() => FMSliderState();
}

class FMSliderState extends State <FMSliderVC> {
  @override
  double sliderValue = 100;
  double sliderEndValue = 300;
  String sliderText = "还没操作";

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Slider"),),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30)),
            _slider(),
            Text(sliderText),
            _sliderTheme(context),
          ],
        ),
      ),
    );
  }


  SliderTheme _sliderTheme(context){
    return SliderTheme(
        data: SliderThemeData(
          trackHeight: 20,
          activeTrackColor: Colors.red,
          inactiveTrackColor: Colors.grey,
          disabledActiveTrackColor: Colors.yellow,
          disabledInactiveTrackColor: Colors.cyan,
          activeTickMarkColor: Colors.black,
          inactiveTickMarkColor: Colors.red,
          overlayColor: Colors.yellow,
          overlappingShapeStrokeColor: Colors.black,
          overlayShape: RoundSliderOverlayShape(),
          valueIndicatorColor: Colors.red,
          // tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 10.0),
          showValueIndicator: ShowValueIndicator.onlyForDiscrete,
          minThumbSeparation: 100,

          rangeTrackShape: RoundedRectRangeSliderTrackShape(),
          // rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 15, disabledThumbRadius: 15, pressedElevation: 3),
        ),

        child: RangeSlider(
            values: RangeValues(sliderValue, sliderEndValue),
            min: 100,
            max: 500,
            onChanged: (rangeValues){
              sliderValue = rangeValues.start;
              sliderEndValue = rangeValues.end;

              setState(() {

              });
            },
        ),

        // child: Slider(
        //   value: sliderValue,
        //   min: 100,
        //   max: 500,
        //   divisions: 10,
        //   label: "气泡",
        //   onChanged: (value){
        //     print("SliderTheme onChanged : $value");
        //     updateSlider(value, "onChanged : $value");
        //   },
        //   onChangeStart: (value){},
        // ),
    );
  }

  Slider _slider(){
    return Slider(
      value: sliderValue,
      activeColor: Colors.red,
      inactiveColor: Colors.yellow,

      min: 100,
      max: 500,

      label: "气泡 $sliderValue",
      divisions: 10,

      semanticFormatterCallback: (value){
        print("美元 $value");
        return "美元 value";
      },

      onChanged: (value){
        print("onChanged : $value");
        updateSlider(value, "onChanged : $value");
      },
      onChangeStart: (value){
        print("onChangeStart : $value");
        updateSlider(value, "onChangeStart : $value");
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