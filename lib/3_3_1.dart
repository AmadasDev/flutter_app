//  Chapter 3.3.1 StatelessWidget 실습

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Text(
          'Hello World',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}