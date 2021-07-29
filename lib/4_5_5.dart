//  Chapter 4.5.5 CircleAvatar
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
        title: Text('CircleAvatar'),
      ),
      body: CircleAvatar(
        //child: Icon(Icons.person),
        backgroundImage: NetworkImage('https://picsum.photos/250?image=9'), //  네트워크상에 존재하는 이미지를 표시한다면
      ),
    );
  }
}
