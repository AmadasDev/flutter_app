//  main.dart
//  Chapter 6.1.1 파일 분할 및 임포트 방법
//  Chapter 6.1.4 새로운 화면에 값 전달하기

import 'package:flutter/material.dart';
import 'package:flutter_app/first_page.dart'; //  첫 번째 페이지
import 'package:flutter_app/second_page.dart';  //  두 번째 페이지

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(), //  첫 페이지를 시작 페이지로 지정
    );
  }
}
//  여기까지는 공통 코드이다.

//  새로운 화면에 값 전달하기
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
/*
//  여기부터 수정한다.
//  첫 번째 페이지
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: ElevatedButton(
        child: Text('다음 페이지로'),
        onPressed: () {
          Navigator.push( //  SecondPage로 화면 이동 코드
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
      )
    );
  }
}

//  두 번째 페이지
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context); //  현재 화면을 종료하고 이전 화면으로 돌아가기
        },
      ),
    );
  }
}
*/
