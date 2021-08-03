//  first_page.dart
//  Chapter 6.2.2 routes에 의한 화면 이동

import 'package:flutter/material.dart';
import '6_2_1.dart';
import 'package:flutter_app/6_2_1_second_page.dart';

//  첫 번째 페이지
//  새로운 화면에 값 전달하기
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First'),
        ),
        body: ElevatedButton(
          child: Text('다음 페이지로'),
          onPressed: () async {
            final person = Person('홍길동', 20);
            final result = await Navigator.pushNamed(context, '/second');

            print(result);
          },
        )
    );
  }
}
