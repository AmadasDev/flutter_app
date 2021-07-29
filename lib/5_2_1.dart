//  Chapter 5.2.1 AlertDilog

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
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AlertDilog'),
        ),
        body: showDialog(
          context: context,
          barrierDismissible: false,  //  사용자가 다이얼로그 바깥을 터치하며 닫히지 않음
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('제목'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('Alert Dialog입니다.'),
                    Text('OK를 눌러 닫습니다.'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    //  다이얼로그 닫기
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    //  다이얼로그 닫기
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        ),
    );
  }
}