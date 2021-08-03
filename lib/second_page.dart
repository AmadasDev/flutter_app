//  second_page.dart
//  Chapter 6.1.3 pop으로 이전 화면으로 이동
//  Chapter 6.1.5 이전 화면으로 데이터 돌려주기

import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_app/first_page.dart'; //  첫 번째 페이지

//  두 번째 페이지
//  이전 화면으로 데이터 돌려주기
class SecondPage extends StatelessWidget {
  final Person person;

  SecondPage({required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context, 'ok'); //  현재 화면을 종료하고 이전 화면으로 돌아가기(pop으로 이전 화면으로 이동)
        },
      ),
    );
  }
}

//  popd으로 이전 화면으로 이동
/*
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
          Navigator.pop(context); //  현재 화면을 종료하고 이전 화면으로 돌아가기(pop으로 이전 화면으로 이동)
        },
      ),
    );
  }
}*/
