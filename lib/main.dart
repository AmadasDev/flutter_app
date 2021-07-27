//  main.dart

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
      home: MyHomPage(),
    );
  }
}
//  여기까지는 공통 코드이다.

//  여기부터 수정한다.
class MyHomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('main'),
      ),
      body: Text('여기에 예제 작성'),  //  주로 여기에 코딩한다.
    );
  }
}
