//  first_page.dart
//  Chapter 6.1.2 push로 새로운 화면 호출
//  Chapter 6.1.4 새로운 화면에 값 전달하기

import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_app/second_page.dart';  //  두 번째 페이지

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
            final result = await Navigator.push(  //  SecondPage로 화면 이동 코드(push로 새로운 화면 호출)
              context,
              MaterialPageRoute(builder: (context) => SecondPage(person: person)),
            );

            print(result);
          },
        )
    );
  }
}

/*
//  push로 새로운 화면 호출
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
            Navigator.push( //  SecondPage로 화면 이동 코드(push로 새로운 화면 호출)
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        )
    );
  }
}*/
