import 'package:flutter/material.dart';

class FMFocusNodeVC extends StatefulWidget {
  @override
  FMFocusNodeState createState() => FMFocusNodeState();
}

class FMFocusNodeState extends State <FMFocusNodeVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('FocusNode'),),
      // body: _normalField(),
      body: _focusScope(),
    );
  }

  FocusScopeNode _scopeNode = FocusScopeNode();

  FocusScope _focusScope(){
    return FocusScope(
      node: _scopeNode,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _textField(false),
          _textField(false),
          _textField(false),
          _btnField(),
          _textField(false),
          _btnField(),
          _textField(false),
          _textField(true),
        ],
      ),
    );
  }

  TextField _textField(bool isLast){
    return TextField(
      decoration: InputDecoration(
        hintText: "请输入文本"
      ),
      onEditingComplete: (){
        _scopeNode.nextFocus();
      },
    );
  }


  Row _btnField(){
    return Row(
      children: [
        Expanded(child: _textField(false)),
        RaisedButton(
          onPressed: (){},
          focusNode: FocusNode(skipTraversal: true),
          child: Text("我可以点的"),
        )
      ],
    );
  }

  TextField _normalField(){
    FocusNode normalNode = FocusNode();

    return TextField(
      focusNode: normalNode,
      onSubmitted: (string){
        print(string);
        // normalNode.unfocus();
        FocusManager.instance.primaryFocus.unfocus();
      },
    );
  }
}