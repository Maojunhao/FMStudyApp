import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      padding: EdgeInsets.all(30),
      children: [
        _textField(),
      ],
    );
  }

  TextField _textField(){
    return TextField(
      controller: _controller(),
      decoration: _normalDecoration(),
      // textInputAction: TextInputAction.unspecified,
      // keyboardType: TextInputType.text,
      // textDirection: TextDirection.ltr,
      // autofocus: true,
      // obscuringCharacter: "&",
      // obscureText: true,
      // smartDashesType: SmartDashesType.enabled,
      // smartQuotesType: SmartQuotesType.enabled,
      onChanged: (string){
        print("onChanged $string");
      },
      onSubmitted: (string){
        print("onSubmitted $string");
      },
      onEditingComplete: (){
        print("onEditingComplete");
      },
      onTap: (){
        print("onTap");
      },
    );
  }

  TextInput a;

  TextEditingController _controller(){
    TextEditingController _controller = TextEditingController(
      text: "123333",
    );

    _controller.addListener(() {
      // print(_controller.text);
    });

    return _controller;
  }

  InputDecoration _normalDecoration(){
    return InputDecoration(
      filled: true,
      fillColor: Colors.lightBlue.shade100,

      prefixIcon: Icon(Icons.phone),
      prefixText: "+86 ",
      prefixStyle: TextStyle(color: Colors.orange, fontSize:  18),

      hintText: "请输入手机号",

      // suffix: IconButton(
      //   icon: Icon(Icons.clear),
      //   onPressed: (){
      //     print("object");
      //     setState(() {
      //
      //     });
      //   },
      //   padding: EdgeInsets.all(0),
      //   iconSize: 20,
      //   highlightColor: Colors.red,
      //   hoverColor: Colors.yellow,
      // ),
    );
  }

  /** InputDecoration 详解 **/
  InputDecoration _decoration(){
    return InputDecoration(
      icon: Icon(Icons.print),

      fillColor: Colors.yellow.shade200,
      filled: true,

      errorMaxLines: 2,
      errorText: "ErrorText ErrorText ErrorText ErrorText ErrorText ErrorText ErrorText ErrorText ErrorText ErrorText ErrorText ",
      errorStyle: TextStyle( color: Colors.green, fontSize: 14),

      helperText: "helperText",
      helperMaxLines: 2,
      helperStyle: TextStyle( color: Colors.black, fontSize: 14),

      labelText: "labelText",
      labelStyle: TextStyle( color: Colors.red, fontSize: 14),


      suffixText: "suffixText",
      suffixStyle: TextStyle( color: Colors.grey, fontSize: 14),
      suffixIcon: Icon(Icons.ac_unit),

      counterText: "counterText",
      counterStyle: TextStyle( color: Colors.pink, fontSize: 14),

      hintText: "hintText",
      hintMaxLines: 2,
      hintStyle: TextStyle( color: Colors.orange, fontSize: 14),

      prefixText: "prefixText",
      prefixStyle: TextStyle( color: Colors.blue, fontSize: 14),
      prefixIcon: Icon(Icons.phone),

      // 没啥明显效果
      prefixIconConstraints: BoxConstraints(minWidth: 50),
      suffixIconConstraints: BoxConstraints(minWidth: 30, minHeight: 50),

      semanticCounterText: "semanticCounterText",

      contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 30),

      floatingLabelBehavior: FloatingLabelBehavior.always
    );
  }
}