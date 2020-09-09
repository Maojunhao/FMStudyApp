import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FMTextVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Text",
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          child: _listView(),
        ),
      ),
    );
  }

  ListView _listView(){
    return ListView(
      children: [
        _normalText(),
        _richText(),
      ],
    );
  }

  Text _normalText(){
    return Text(
      "Hello World",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 50,
        color: Colors.red,
        decoration: TextDecoration.underline,
        decorationColor: Colors.yellow,
        decorationStyle: TextDecorationStyle.double,
      ),
    );
  }

  Text _richText(){
    return Text.rich(
      TextSpan(
        text: "Just ",
        style: TextStyle(
          fontSize: 30,
        ),
        children: [
          TextSpan(
            text: "taps here",
            style: TextStyle(
              fontSize: 40,
              color: Colors.blue
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = (){
                print("点击了");
              }
            ,
          ),
          TextSpan(
            text: " one more time",
          ),
        ],
      ),
    );
  }
}