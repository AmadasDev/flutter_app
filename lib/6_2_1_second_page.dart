//  6_2_1_second_page.dart
//  Chapter 6.2.2 routes에 의한 화면 이동

import 'package:flutter/material.dart';
import '6_2_1.dart';
import 'package:flutter_app/6_2_1_first_page.dart'; //  첫 번째 페이지

//  두 번째 페이지
//  이전 화면으로 데이터 돌려주기
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
          Navigator.pop(context, 'ok'); //  현재 화면을 종료하고 이전 화면으로 돌아가기(pop으로 이전 화면으로 이동)
        },
      ),
    );
  }
}
