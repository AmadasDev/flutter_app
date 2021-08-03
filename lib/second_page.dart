//  Chapter 6.1.3 pop으로 이전 화면으로 이동

import 'package:flutter/material.dart';

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