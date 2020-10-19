import 'package:flutter/material.dart';

class FMSnackBarVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar"),),
      body: ListView(
        children: [
          FMNormalSnackBarBtn(),
          FMShapeSnackBarBtn(),
          FMCustomSnackBarBtn(),
        ],
      ),
    );
  }
}

class FMNormalSnackBarBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text("Noraml SnackBar"),
      onPressed: (){
        Scaffold.of(context).hideCurrentSnackBar();
        // Scaffold.of(context).removeCurrentSnackBar();
        Scaffold.of(context).showSnackBar(_normalSnackBar());
      },
    );
  }

  SnackBar _normalSnackBar(){
    return SnackBar(
      content: Text("SnackBar"),
      backgroundColor: Colors.grey,
      elevation: 10,
      behavior: SnackBarBehavior.fixed,
      duration: Duration(seconds: 15),
      onVisible: (){
        print("onVisible");
      },
      action: SnackBarAction(
        label: "SnackBarAction",
        textColor: Colors.red,
        disabledTextColor: Colors.green,
        onPressed: (){
          print("SnackBarAction.onPressed");
        },
      ),
    );
  }
}

class FMShapeSnackBarBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text("Shape SnackBar"),
      onPressed: (){
        Scaffold.of(context).hideCurrentSnackBar();
        // Scaffold.of(context).removeCurrentSnackBar();
        Scaffold.of(context).showSnackBar(_shapeSnackBar());
      },
    );
  }

  SnackBar _shapeSnackBar(){
    return SnackBar(
      content: Text("SnackBar"),
      backgroundColor: Colors.lightBlueAccent,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Colors.yellow,
          width: 2,
        ),
      ),
      onVisible: (){
        print("onVisible");
      },
      action: SnackBarAction(
        label: "SnackBarAction",
        textColor: Colors.red,
        disabledTextColor: Colors.green,
        onPressed: (){
          print("SnackBarAction.onPressed");
        },
      ),
    );
  }
}

class FMCustomSnackBarBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text("Custom SnackBar"),
      onPressed: (){
        Scaffold.of(context).hideCurrentSnackBar();
        // Scaffold.of(context).removeCurrentSnackBar();
        Scaffold.of(context).showSnackBar(_customSnackBar());
      },
    );
  }

  SnackBar _customSnackBar(){
    return SnackBar(
      content: _content(),
      backgroundColor: Colors.lightBlueAccent,
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Colors.yellow,
          width: 2,
        ),
      ),
      onVisible: (){
        print("onVisible");
      },
      action: SnackBarAction(
        label: "SnackBarAction",
        textColor: Colors.red,
        disabledTextColor: Colors.green,
        onPressed: (){
          print("SnackBarAction.onPressed");
        },
      ),
    );
  }

  Widget _content(){
    return Container(
      height: 100,
      child: Row(
        children: [
          Container(
            width: 60,
            child: Image.network('http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("我叫路飞"),
              Text("是要成为海贼王的男人"),
            ],
          ),
        ],
      ),
    );
  }
}