import 'package:flutter/material.dart';

class FMBottomNavBarVC extends StatefulWidget {
  @override
  FMBottomNavBarState createState() => FMBottomNavBarState();
}

class FMBottomNavBarState extends State <FMBottomNavBarVC>{
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
      body: Container(),
    );
  }

  BottomNavigationBar _bottomNavigationBar(){
    return BottomNavigationBar(
      items: _items(),
      onTap: (int index){
        _selectedIndex = index;
        print("选中 index = ${index}");
        setState(() {

        });
      },
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.green,
      unselectedItemColor: Colors.red,
      iconSize: 30,
      selectedFontSize: 16,
      unselectedFontSize: 11,
      selectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 20
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.cyan,
      ),
      // showSelectedLabels: false,
      // showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 24,
      ),
      // backgroundColor: Colors.lightBlue,
    );
  }

  List<BottomNavigationBarItem> _items(){
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.title),
        title: Text('title'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text('favorite'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.backspace),
        title: Text('backspace'),
      ),
    ];
  }

}