import 'package:flutter/material.dart';

class FMScaffoldVC extends StatefulWidget {
  FMScaffoldVC({Key key}) : super(key: key);
  @override
  FMScaffoldState createState() => FMScaffoldState();
}

class FMScaffoldState extends State<FMScaffoldVC> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),
        floatingActionButton: _floatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        persistentFooterButtons: _persistentFooterButtons(),
        drawer: Drawer(),
        endDrawer: Drawer(),
        bottomNavigationBar: _bottomNavigationBar(),
        bottomSheet: _bottomSheet(),
      backgroundColor: Colors.yellow,
        drawerEnableOpenDragGesture: false,
          resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
      ),
    );
  }

  AppBar _appBar(){
    return AppBar(
      title: Text('Scaffold'),
      backgroundColor: Colors.lightBlue,
    );
  }

  Container _body(){
    return Container(
      color: Colors.grey,
    );
  }

  FloatingActionButton _floatingActionButton(){
    return FloatingActionButton(
      child: Text('返回'),
      onPressed: (){
        Navigator.pop(context);
      },
    );
  }

  List<Widget> _persistentFooterButtons(){
    return [
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.cyan,
      ),
    ];
  }

  BottomNavigationBar _bottomNavigationBar(){
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
              Icons.home
          ),
          title: Text('home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.favorite
          ),
          title: Text('favorite'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.accessible
          ),
          title: Text('accessible'),
        ),
      ],
    );
  }

  BottomSheet _bottomSheet(){
    return BottomSheet(
        onClosing: (){},
        builder: (BuildContext context){
          return Container(
            height: 60,
            color: Colors.cyan,
            child: Text('Bottom Sheet'),
            alignment: Alignment.center,
          );
        },
    );
  }
}