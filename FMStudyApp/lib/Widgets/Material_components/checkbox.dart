import 'package:flutter/material.dart';

class FMCheckBoxVC extends StatefulWidget{
  @override
  FMCheckBoxState createState() => FMCheckBoxState();
}

class FMCheckBoxState extends State <FMCheckBoxVC>{

  List <FMCheckBoxModel> _datas = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initData();
  }

  void initData(){
    _datas.add(FMCheckBoxModel(false, "游戏"));
    _datas.add(FMCheckBoxModel(false, "社交"));
    _datas.add(FMCheckBoxModel(false, "购物"));
    _datas.add(FMCheckBoxModel(false, "娱乐"));
    _datas.add(FMCheckBoxModel(false, "影视"));

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
      //   child: _colorfulCheckBox(),
      // ),
      body: ListView.builder(
        itemCount: _datas.length,
          itemBuilder: (context, index){
            FMCheckBoxModel model = _datas[index];
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

    _datas.forEach((FMCheckBoxModel model) {
      if (model.selected) {
        string = string + "${model.text}  ";
      }
    });

    return string;
  }

  Row _buildRow(FMCheckBoxModel model){
    return Row(
      children: [
        _checkbox(model),
        Text("${model.text}")
      ],
    );
  }

  Checkbox _checkbox(FMCheckBoxModel model){
    return Checkbox(
        value: model.selected,
        onChanged: (value){
          model.selected = !model.selected;

          setState(() {

          });
        }
    );
  }

  bool checkboxSelected = true;

  Checkbox _colorfulCheckBox(){
    return Checkbox(
        value: checkboxSelected,
        tristate: true,
        activeColor: Colors.red,
        checkColor: Colors.black,
        hoverColor: Colors.pink,
        focusColor: Colors.yellow,
        // visualDensity: VisualDensity(horizontal: 3, vertical: -3),
        onChanged: (value){
          checkboxSelected = !checkboxSelected;

          setState(() {

          });
        }
    );
  }
}

class FMCheckBoxModel extends Object {

  bool selected;
  String text;

  FMCheckBoxModel(this.selected, this.text){

  }
}