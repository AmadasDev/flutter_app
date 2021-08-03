//  Chapter 6.3.1 StatelessWidget 클래스 동작

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}
//  여기까지는 공통 코드이다.

//  여기부터 수정한다.
//  첫 번째 페이지
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
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
    print('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context, 'ok'); //  현재 화면을 종료하고 이전 화면으로 돌아가기
        },
      ),
    );
  }
}
