import 'package:flutter/material.dart';

class FMExpansionPanelVC extends StatefulWidget{
  @override
  FMExpansionPanelState createState() => FMExpansionPanelState();
}

class FMExpansionPanelState extends State <FMExpansionPanelVC>{
  List <ExpansionPanelModel> _models = [];
  List <ExpansionPanel> _childrenForExpansionPanel = [];
  List <ExpansionPanelRadio> _childrenForExpansionPanelRadio = [];

  @override
  void initState(){
    super.initState();

    _initData();
  }

  void _initData(){
    _models.clear();
    _models.add(ExpansionPanelModel("EP1", "Title EP1", false));
    _models.add(ExpansionPanelModel("EP2", "Title EP2", false));
    _models.add(ExpansionPanelModel("EP3", "Title EP3", false));
    _models.add(ExpansionPanelModel("EP4", "Title EP4", false));
    _models.add(ExpansionPanelModel("EP5", "Title EP5", false));

    print("initDate");
  }

  void _initChildrenForExpansionPanel(){
    _childrenForExpansionPanel.clear();
    _models.forEach((model) {
      _childrenForExpansionPanel.add(_expansionPanel(model));
    });
  }

  void _initChildrenForExpansionPanelRadio(){
    _childrenForExpansionPanelRadio.clear();
    _models.forEach((model) {
      _childrenForExpansionPanelRadio.add(_expansionPanelRadio(model));
    });

    print(_childrenForExpansionPanelRadio);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanel"),
      ),
      body: SingleChildScrollView(
        // child: _expansionPanelList(),
        child: _expansionPanelListRadio(),
      ),
    );
  }

  ExpansionPanelList _expansionPanelList(){

    _initChildrenForExpansionPanel();

    return ExpansionPanelList(
      expansionCallback: (index, isExpand){
        _models[index].isExpanded = !_models[index].isExpanded;
        print(_models[index].isExpanded);
        setState(() {

        });
      },
      dividerColor: Colors.black,
      expandedHeaderPadding: EdgeInsets.zero,
      children: _childrenForExpansionPanel,
    );
  }

  ExpansionPanel _expansionPanel(ExpansionPanelModel model){
    return ExpansionPanel(
      headerBuilder: (context, boolValue){
        return Container(
          height: 80,
          alignment: Alignment.centerLeft,
          child: Text("${model.title}"),
        );
      },
      isExpanded: model.isExpanded,
      canTapOnHeader: true,
      body: Container(
        height: 200,
        color: Colors.red,
      ),
    );
  }

  ExpansionPanelList _expansionPanelListRadio(){

    _initChildrenForExpansionPanelRadio();

    return ExpansionPanelList.radio(
      expansionCallback: (index, isExpand){
        _models[index].isExpanded = !_models[index].isExpanded;
        setState(() {

        });
      },
      initialOpenPanelValue: _models[1].value,
      dividerColor: Colors.black,
      expandedHeaderPadding: EdgeInsets.zero,
      children: _childrenForExpansionPanelRadio,
    );
  }

  ExpansionPanelRadio _expansionPanelRadio(ExpansionPanelModel model){
    return ExpansionPanelRadio(
      value: model.value,
      headerBuilder: (context, boolValue){
        return Container(
          height: 80,
          alignment: Alignment.centerLeft,
          child: Text("${model.title}"),
        );
      },
      canTapOnHeader: true,
      body: Container(
        height: 200,
        color: Colors.red,
      ),
    );
  }
}

class ExpansionPanelModel {
  var value;
  String title;
  bool isExpanded;

  ExpansionPanelModel(this.value, this.title, this.isExpanded){

  }
}