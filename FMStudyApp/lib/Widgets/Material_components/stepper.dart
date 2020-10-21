import 'package:flutter/material.dart';

class FMStepperVC extends StatefulWidget{
  @override
  FMStepperState createState() => FMStepperState();
}

class FMStepperState extends State <FMStepperVC>{
  int _currentStep = 0;
  List <FMStepperModel> _datas = [];

  @override
  void initState(){
    super.initState();

    initData();
  }

  void initData(){
    _datas.clear();

    _datas.add(FMStepperModel("第一步", "我们先进行第一步", 0));
    _datas.add(FMStepperModel("第二步", "我们先进行第二步", 1));
    _datas.add(FMStepperModel("第三步", "我们先进行第三步", 2));
    _datas.add(FMStepperModel("第三步", "我们先进行第四步", 3));
    _datas.add(FMStepperModel("第三步", "我们先进行第五步", 4));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Stepper"),),
      body: _listView(),
    );
  }

  ListView _listView(){
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 500,
            height: 200,
            child: _stepper(StepperType.horizontal),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            color: Colors.yellow,
            height: 30,
            alignment: Alignment.center,
            child: Text("下方为纵向 Stepper"),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 400,
            height: 500,
            child: _stepper(StepperType.vertical),
          ),
        ),
      ],
    );
  }


  Stepper _stepper(type){
    return Stepper(
      currentStep: _currentStep, // 当前 step
      physics: ClampingScrollPhysics(), // 滑动的物理效果
      type: type, // Stepper 类型，分为横向与纵向两种， StepperType
      // 内容下方按钮构建函数
      controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
        return Row(
          children: <Widget>[
            FlatButton(
              onPressed: onStepContinue,
              child: const Text('NEXT'),
            ),
            FlatButton(
              onPressed: onStepCancel,
              child: const Text('CANCEL'),
            ),
            FlatButton(
              onPressed: (){
                print("自定义按钮点击事件");
              },
              child: const Text('自定义按钮'),
            )
          ],
        );
      },
      // step 点击回调函数
      onStepTapped: (index){
        print(index);
        _currentStep = index;
        setState(() {

        });
      },
      // Cancel 按钮点击回调函数
      onStepCancel: (){
        if(_currentStep > 0){
          _currentStep--;
        }
        setState(() {

        });
      },
      // Next 按钮点击回调函数
      onStepContinue: (){
        if(_currentStep < _datas.length - 1){
          _currentStep++;
        }
        setState(() {

        });
      },
      // <Step> 子控件数组
      steps: _steps(),
    );
  }

  // 创建 <Step> steps 数组
  List <Step> _steps(){
    List <Step> steps = [];
    _datas.forEach((model) {
      // 我们根据当前 step 进行区分，当前 step 之前的认为 StepState.complete，当前认为 StepState.editing，之后认为 StepState.indexed
      if(_currentStep < model.index) {
        model.state = StepState.indexed;
      } else if(_currentStep == model.index) {
        model.state = StepState.editing;
      } else if(_currentStep > model.index){
        model.state = StepState.complete;
      }

      steps.add(
        Step(
          // 标题控件
          title: Row(
            children: [
              Icon(Icons.title),
              Text("title"),
            ],
          ),
          subtitle: Text("subTitle"), // 副标题控件
          content: Text("${model.content}"), // 内容控件
          isActive: (_currentStep == _datas.indexOf(model)), // 是否激活状态，true 时会变成蓝色
          state: model.state, // 当前 step 的状态，StepState 会改变每一个 step 的图标
        ),
      );
    });
    return steps;
  }
}

class FMStepperModel {
  String title;
  String content;
  int index;
  StepState state = StepState.indexed;

  FMStepperModel(this.title, this.content, this.index);
}