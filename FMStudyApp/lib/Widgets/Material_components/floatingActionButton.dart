import 'package:flutter/material.dart';

class FMFloatingActionButtonVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
      ),
      floatingActionButton: _floatingActionButton(),
      // floatingActionButton: _customFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  FloatingActionButton _floatingActionButton(){
    return FloatingActionButton(
      child: Icon(Icons.ac_unit),
      tooltip: "我就简单的介绍一下吧",
      foregroundColor: Colors.pink,
      backgroundColor: Colors.yellow,
      splashColor: Colors.blue,
      onPressed: (){
        print("test");
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          width: 2,
          color: Colors.red,
        ),
      ),
    );
  }

  FloatingActionButton _customFloatingActionButton(){
    return FloatingActionButton.extended(
        onPressed: null, 
        icon: Icon(Icons.ac_unit),
        label: Text("悬浮按钮"),
    );
  }

  BottomAppBar _bottomAppBar(){
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      elevation: 20,
      notchMargin: 12,
      child: Container(
        height: 50,
        child: Row(
          children: [
            Expanded(
                child: Container(
                  child: Text("底"),
                  alignment: Alignment.center,
                ),
            ),
            Expanded(
              child: Container(
                child: Text("部"),
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              child: Container(
                child: Text("按"),
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              child: Container(
                child: Text("钮"),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}