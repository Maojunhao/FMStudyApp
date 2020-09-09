import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FMImageVC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Image",
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          color: Colors.grey,
          child: _listview(),
        ),
      ),
    );
  }

  ListView _listview(){
    return ListView(
      padding: const EdgeInsets.all(30),
      children: [
        Text("本地图片"),
        Container(
          height: 150,
          child: _localRow(),
        ),
        Text("网络图片"),
        Image.network('http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg'),
        Text("带占位图的网络图片，成功加载"),
        FadeInImage.assetNetwork(
          placeholder: 'images/base_widgets/star_black.png',
          image: 'http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg',
          fit: BoxFit.fill,
        ),
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: 'http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f38.jpg',
        ),
        Text("带占位图的网络图片，加载失败"),
        FadeInImage.assetNetwork(
          placeholder: 'images/base_widgets/star_black.png',
          image: '',
          fit: BoxFit.fill,
        ),
        FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: 'http://tiebapic.baidu.com/forum/w%3D580/sign=a96ca741eafaaf5184e381b7bc5594ed/7ea6a61ea8d3fd1f2643ad5d274e251f95ca5f.jpg',
        ),
      ],
    );
  }

  Row _localRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image.asset(
            'images/base_widgets/star_black.png', fit: BoxFit.none,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.contain,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          width: 30,
          height: 60,
          color: Colors.yellow,
          child: Image(
            image: AssetImage('images/base_widgets/star_black.png'),
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}