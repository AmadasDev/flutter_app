//  Chapter 4.2.5 SingleChildScrollView

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
  final items = List.generate(100, (i) => i).toList();  //  0부터 99까지의 값을 갖는 리스트 생성
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('제목'),
        ),
        body: SingleChildScrollView(
          child: ListBody(  //  Column의 경우 숫자노출된 영역만 스크롤 적용됨.
            children: items.map((i) => Text('$i')).toList(),
          ),
        ),
    );
  }
}