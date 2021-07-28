//  Chapter 4.5.1 Text

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
      home: MyHomePage(),
    );
  }
}
//  여기까지는 공통 코드이다.

//  여기부터 수정한다.
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text'),
        ),
        body: Text(
          'Hello World',  //  필수 프로퍼티고 이름 없는 인수
          style: TextStyle(
            fontSize: 40.0, //  글자크기
            fontStyle: FontStyle.italic, //  이탤릭체
            fontWeight: FontWeight.bold,  //  볼드체
            color: Colors.red,  //  색상
            letterSpacing: 4.0, //  자간
          ),
        ),
    );
  }
}
