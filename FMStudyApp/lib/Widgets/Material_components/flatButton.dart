import 'package:flutter/material.dart';

class FMFlatButtonVC extends StatefulWidget{
  @override
  FMFlatButtonState createState() => FMFlatButtonState();
}

class FMFlatButtonState extends State<FMFlatButtonVC>{
  var btnEnabled = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("FlatButton"),
      ),
      body: _listView(),
    );
  }

  ListView _listView(){
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        normalFlatButton(),
        _shapeColumn(),
        _statefulColumn(),
        _customColumn(),
      ],
    );
  }

  FlatButton normalFlatButton(){
    return FlatButton(
      onPressed: (){
        print("点击了 button");
      },
      onLongPress: (){
        print("长按了 button");
      },
      onHighlightChanged: (bool b){
        print(b ? "button 高亮了" : "button 不亮了");
      },
      child: Text("我是一个按钮"),
      color: Colors.blue,
      textColor: Colors.white,
    );
  }

  Column _shapeColumn(){
    return Column(
      children: [
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          child: Text('shape button'),
        ),
        FlatButton(
          color: Colors.grey,
          textColor: Colors.white,
          child: Container(
            height: 100,
            width: 100,
            child: Text('圆的'),
            alignment: Alignment.center,
          ),
          shape: CircleBorder(
            side: BorderSide(
              width: 2,
              color: Colors.red,
              style: BorderStyle.solid,
              // style: BorderStyle.none,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        FlatButton(
          onPressed: (){},
          color: Colors.green,
          textColor: Colors.white,
          child: Container(
            height: 60,
            width: 200,
            child: Text('球场的'),
            alignment: Alignment.center,
          ),
          shape: StadiumBorder(
            side: BorderSide(
              width: 2,
              color: Colors.red,
              // style: BorderStyle.solid,
              style: BorderStyle.none,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        FlatButton(
          onPressed: (){},
          color: Colors.green,
          textColor: Colors.white,
          child: Container(
            height: 60,
            width: 200,
            child: Text('圆角的'),
            alignment: Alignment.center,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              width: 2,
              color: Colors.red,
              style: BorderStyle.solid,
              // style: BorderStyle.none,
            ),
          ),
        ),
      ],
    );
  }

  Column _statefulColumn(){
    return Column(
      children: [
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          child: Text('stateful button'),
        ),
        Padding(padding: EdgeInsets.all(10)),
        FlatButton(
          onPressed: btnEnabled ? (){} : null,
          textColor: Colors.white,
          color: Colors.blue,
          highlightColor: Colors.yellow,
          disabledColor: Colors.grey,
          child: Text('${btnEnabled ? "我现在 enable了":"我现在 disable 了"}'),
        ),
        Padding(padding: EdgeInsets.all(10)),
        FlatButton(
          onPressed: () {
            btnEnabled = !btnEnabled;
            // 执行该方法会刷新页面
            setState(() {

            });
          },
          textColor: Colors.white,
          color: Colors.blue,
          highlightColor: Colors.yellow,
          child: Text('点我可以控制上边那家伙'),
        ),
      ],
    );
  }

  Column _customColumn(){
    return Column(
      children: [
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          child: Text('custom button'),
        ),
        Padding(padding: EdgeInsets.all(10)),
        RaisedButton(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg'),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: Image.network('http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '主标题',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      '副标题',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}