//  6_2_1.dart
//  Chapter 6.2.1 routes 정의

import 'package:flutter/material.dart';
import 'package:flutter_app/6_2_1_first_page.dart'; //  첫 번째 페이지
import 'package:flutter_app/6_2_1_second_page.dart';  //  두 번째 페이지

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
      routes: {
        '/first': (contet) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
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

//  여기부터 수정한다.
