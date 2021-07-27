//  Chapter 4.2.3 Row

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
          title: Text('Row'),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max, //  가로로 꽉 채우기(max:남은 공간을 모두 차지한다. min:포함된 콘텐츠의 크기만큼만 차지한다.)
          mainAxisAlignment: MainAxisAlignment.center,  //  가로 방향으로 가운데 정렬하기(start:왼쪽 정렬. end:오른쪽 정렬.)
          crossAxisAlignment: CrossAxisAlignment.center,  //  세로 방향으로 가운데 정렬하기(start:왼쪽 정렬. end:오른쪽 정렬.)
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
            ),
          ],
        ),
    );
  }
}
