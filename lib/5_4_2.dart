//  Chapter 5.4.2 AnimatedContainer

import 'package:flutter/material.dart';
import 'dart:math'; //  Random 클래스 사용에 필요

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedContainerPage(),
    );
  }
}
//  여기까지는 공통 코드이다.

//  여기부터 수정한다.
class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  var _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              final random = Random();  //  Random 클래스 사용 준비
              setState(() {
                //  클릭할 때마다 100.0~299.0 사이의 실수를 랜덤하게 얻기
                _size = random.nextInt(200).toDouble() + 100; //  nextInt(0~199 사이의 난수를 정수로 반환)
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1), //  1초 동안 애니메이션 적용
              width: _size, //  랜덤한 값을 적용
              height: _size,  //  랜덤한 값을 적용
              child: Image.network('https://picsum.photos/250?image=9'),
              curve: Curves.fastOutSlowIn,  //  미리 정의된 애니메이션 효과
            ),
          ),
        ),
    );
  }
}
