//  Chapter 4.3.2 Padding

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
        title: Text('Padding'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          color: Colors.red,
        ),
      )
    );
  }
}
