import 'package:flutter/material.dart';

class FMIconVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Icon",
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          child: _column(),
        ),
      ),
    );
  }

  Column _column(){
    return Column(
      children: [
        Icon(
          Icons.face,
          size: 40,
          color: Colors.red,
        ),
        Icon(
          Icons.face,
          size: 40,
        ),
        Icon(
          Icons.favorite,
          size: 40,
          color: Colors.red,
        ),
        Icon(
          Icons.favorite_border,
          size: 40,
          color: Colors.grey,
        ),
        Icon(
          Icons.add,
          size: 40,
        ),
        Icon(
          Icons.ac_unit,
          size: 40,
        ),
        Icon(
          Icons.access_alarm,
          size: 40,
        ),
        Icon(
          Icons.access_time,
          size: 40,
        ),
        Icon(
          Icons.accessible,
          size: 40,
        ),
        Icon(
          Icons.account_balance,
          size: 40,
        ),
      ],
    );
  }
}