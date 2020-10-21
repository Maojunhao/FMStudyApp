import 'package:flutter/material.dart';

class FMRadioVC extends StatefulWidget{
  @override
  FMRadioState createState() => FMRadioState();
}

class FMRadioState extends State <FMRadioVC>{

  List <FMRadioModel> _datas = [];

  int groupValue = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initData();
  }

  void initData(){
    _datas.add(FMRadioModel(1, "游戏"));
    _datas.add(FMRadioModel(2, "社交"));
    _datas.add(FMRadioModel(3, "购物"));
    _datas.add(FMRadioModel(4, "娱乐"));
    _datas.add(FMRadioModel(5, "影视"));

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      // body: Center(
      //   child: _radioRow(),
      // ),
      body: ListView.builder(
          itemCount: _datas.length,
          itemBuilder: (context, index){
            FMRadioModel model = _datas[index];
            return _buildRow(model);
          }
      ),
      bottomSheet: _bottomSheet(),
    );
  }

  BottomSheet _bottomSheet(){
    return BottomSheet(
      onClosing: (){},
      builder: (BuildContext context){
        return Container(
          height: 60,
          color: Colors.cyan,
          child: Text(_selectedBoxs()),
          alignment: Alignment.center,
        );
      },
    );
  }

  String _selectedBoxs(){
    String string = "";

    _datas.forEach((FMRadioModel model) {
      if (model.index == groupValue) {
        string = "你当前选择的是: " + "${model.text}  ";
      }
    });

    return string;
  }

  Row _buildRow(FMRadioModel model){
    return Row(
      children: [
        _radio(model),
        Text("${model.text}")
      ],
    );
  }

  Radio _radio(FMRadioModel model){
    return Radio(
        value: model.index,
        groupValue: groupValue,
        onChanged: (index){
          groupValue = index;
          print(index);
          setState(() {

          });
        }
    );
  }


  // Row _radioRow(){
  //   return Row(
  //     children: [
  //       _colorfulCheckBox(1),
  //       _colorfulCheckBox(2),
  //       _colorfulCheckBox(3),
  //       _colorfulCheckBox(4),
  //       _colorfulCheckBox(5),
  //       _colorfulCheckBox(6),
  //     ],
  //   );
  // }
  //
  //
  // Radio _colorfulCheckBox(index){
  //   return Radio(
  //     value: index,
  //     groupValue: groupValue,
  //     onChanged: (value){
  //       print(value);
  //       groupValue = index;
  //
  //       setState(() {
  //
  //       });
  //     },
  //   );
  // }
}

class FMRadioModel extends Object {

  int index;
  String text;

  FMRadioModel(this.index, this.text);
}