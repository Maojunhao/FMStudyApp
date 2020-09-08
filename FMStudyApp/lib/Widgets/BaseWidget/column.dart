import 'package:flutter/material.dart';

class FMColumnVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Column",
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          width: 350,
          height: 350,
          color: Colors.grey,
          child: _column(),
        ),
      ),
    );
  }

  Column _column(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Container(
          width: 80,
          height: 80,
          color: Colors.orange,
          child: Text("测试", style: TextStyle(fontSize: 10),),
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.red,
          child: Text("测试", style: TextStyle(fontSize: 20),),
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.cyan,
          child: Text("测试", style: TextStyle(fontSize: 30),),
        )
      ],
    );
  }
}