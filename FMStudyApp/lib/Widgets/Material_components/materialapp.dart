import 'package:flutter/material.dart';

class FMMaterialAppVC extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /** 主要讲解 Material 样式属性的 **/
    return _materialApp(context);
    /** 主要讲解路由的, https://www.jianshu.com/p/f72318f1d9be **/
    return _routeApp();
  }

  MaterialApp _materialApp(BuildContext context){
    return MaterialApp(
      // title: "咋没有呢",
      color: Colors.greenAccent,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
      ),
      // debugShowMaterialGrid: true,
      // debugShowCheckedModeBanner: true,
      // showSemanticsDebugger: true,
      // showPerformanceOverlay: true,
      onGenerateTitle: (context){
        return "aaa";
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("MaterialApp"),
        ),
        body: Center(),
      ),
    );
  }

  MaterialApp _routeApp(){
    return MaterialApp(
      // home: Scaffold(
      //   body: AAA(),
      // ),
      initialRoute: '/',
      // routes: {
      //   '/': (context) => AAA(),
      //   '/bbb': (context) => BBB(),
      //   '/ccc': (context) => CCC(),
      //   '/ddd': (context) => DDD(),
      // },
      onGenerateInitialRoutes: (string){
        return [
          MaterialPageRoute(builder: (context) => AAA()),
        ];
      },
      onGenerateRoute: (setting){
        print(setting);
        final isLogin = true;

        final routes = {
          '/': (context) => AAA(),
          '/bbb': (context) => BBB(),
          '/ccc': (context) => CCC(),
          '/ddd': (context) => DDD(),
        };

        if (!isLogin) {
          return MaterialPageRoute(builder: (context) => AAA());
        }

        return MaterialPageRoute(builder: routes[setting.name], settings: setting);
      },
      // onUnknownRoute: (setting){
      //   print(setting);
      //   return MaterialPageRoute(builder: (context) => AAA());
      // },
    );
  }
}

class AAA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AAA'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('点击前往BBB'),
          onPressed: (){
            final datas = {"data": ["1","2","3"]};
            /** 写法 1 **/
            Navigator.pushNamed(context, '/bbb', arguments: datas);

            /** 写法 2**/
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context){
            //           return BBB();
            //       },
            //       settings: RouteSettings(
            //         name: '/bbb',
            //         arguments: datas,
            //       ),
            //     ),
            // );

            /** 写法 3 **/
            // Navigator.of(context).pushNamed('/bbb',arguments: datas);

            /** 写法 4 **/
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context){
            //       return BBB();
            //     },
            //     settings: RouteSettings(
            //       name: '/bbb',
            //       arguments: datas,
            //     ),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}

class BBB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BBB'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('点击前往CCC'),
          onPressed: () {
            var backValueFromDDD = Navigator.pushNamed(context, '/ccc',arguments: {'value': "我是BBB页面传过来的值"});
            backValueFromDDD.then((value){
              print("CCC 传回来反参了，${value}");
            });
            // Navigator.pushNamedAndRemoveUntil(context, '/ccc', (route) => route.isCurrent);
          },
        ),
      ),
    );
  }
}

class CCC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var value = ModalRoute.of(context).settings.arguments;
    print("BBB 页面带过来参数了，${value}");

    return Scaffold(
      appBar: AppBar(
        title: Text('CCC'),
      ),
      body: _listView(context),
    );
  }
  
  ListView _listView(BuildContext context){
    return ListView(
      children: [
        ListTile(
          title: Text("Navigator.pushNamed"),
          onTap: () {
            Navigator.pushNamed(context, '/ddd');
          },
        ),
        ListTile(
          title: Text("Navigator.pushNamedAndRemoveUntil"),
          onTap: (){
            Navigator.pushNamed(context, '/ddd');
          },
        ),
        ListTile(
          title: Text("Navigator.of(context).pushNamedAndRemoveUntil"),
          onTap: (){
            Navigator.of(context).pushNamedAndRemoveUntil('/ddd', (route) => route.settings.name == '/ddd');
          },
        ),
        ListTile(
          title: Text("Navigator.pushNamedAndRemoveUntil - current"),
          onTap: (){
            Navigator.of(context).pushNamedAndRemoveUntil('/ddd', (route) => route.isCurrent);
          },
        ),
        ListTile(
          title: Text("Navigator.pushReplacementNamed"),
          onTap: (){
            Navigator.pushReplacementNamed(context, '/ddd');
          },
        ),
        ListTile(
          title: Text("Navigator.of(context).pushReplacementNamed"),
          onTap: (){
            Navigator.of(context).pushReplacementNamed('/ddd');
          },
        ),
        ListTile(
          title: Text("Navigator.pushReplacement"),
          onTap: (){
            Navigator.pushReplacement(context,
              MaterialPageRoute(
                builder: (context){
                  return DDD();
                },
                settings: RouteSettings(
                  name: '/ddd',
                ),
              ),
            );
          },
        ),
        ListTile(
          title: Text("Navigator.of(context).pushReplacement"),
          onTap: (){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context){
                  return DDD();
                },
                settings: RouteSettings(
                  name: '/ddd',
                ),
              ),
            );
          },
        ),
        ListTile(
          title: Text("Navigator.popAndPushNamed"),
          onTap: (){
            Navigator.popAndPushNamed(context, '/ddd');
          },
        ),
        ListTile(
          title: Text("Navigator.of(context).popAndPushNamed"),
          onTap: (){
            Navigator.of(context).popAndPushNamed('/ddd');
          },
        ),
        ListTile(
          title: Text("Navigator.of(context).pop 传参"),
          onTap: (){
            Navigator.of(context).pop({"value":"我是CCC页面带回来的值"});
          },
        ),
      ],
    );
  }
}

class DDD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   Map test =  ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("DDD"),
      ),
      body: _listView(context),
    );
  }

  ListView _listView(BuildContext context){
    return ListView(
      children: [
        ListTile(
          title: Text('Navigator.pop'),
          onTap: (){
            Navigator.pop(context, "我是DDD带回去的反参");
            // final data = {"data":["1","2","3"]};
            // Navigator.pop(context, data);
          },
        ),
        ListTile(
          title: Text('Navigator.pop'),
          onTap: (){
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          title: Text('Navigator.canPop'),
          onTap: (){
            bool canpop = Navigator.canPop(context);
            // bool canpop = Navigator.of(context).canPop();

            if (canpop) Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Navigator.maybePop'),
          onTap: (){
            Navigator.maybePop(context);
            // Navigator.of(context).maybePop(context);
          },
        ),

        ListTile(
          title: Text('Navigator.popUntil 回到栈顶'),
          onTap: (){
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        ),
        ListTile(
          title: Text('Navigator.popUntil 回到BBB'),
          onTap: (){
            Navigator.popUntil(context, (route) => route.settings.name == '/bbb');
          },
        ),
        ListTile(
          title: Text('Navigator.popUntil 打印堆栈，并回到栈顶'),
          onTap: () {
            Navigator.popUntil(context, (route) => _lookRoutes(route));
          },
        ),
      ],
    );
  }

  bool _lookRoutes(Route route){
    print(route);
    return route.isFirst;
  }
}