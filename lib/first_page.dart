//  Chapter 6.1.2 push로 새로운 화면 호출

import 'package:flutter/material.dart';
import 'package:flutter_app/second_page.dart'; //  두 번째 페이지

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