//  Chapter 5.5.1 CupertinoNavigationBar

import 'package:flutter/cupertino.dart';
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
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar( //  머티리얼의 AppBar에 대응
          middle: Text('4.10 쿠퍼티노 디자인'),  //  머티리얼 AppBar의 title에 대응
        ),
        body: Column(
          children: <Widget>[
            CupertinoSwitch(
              value: _isOn,
              onChanged: (bool value) {
                setState(() {
                  _isOn = value;
                });
              },
            ),
            CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('코퍼티노 AlertDialog'),
              onPressed: () {
                //  클릭 이벤트
              },
            ),
            CupertinoButton(
              child: Text('쿠퍼티노 Pikcer'),
              onPressed: () {
                //  클릭 이벤트
              },
            ),
          ],
        ),
    );
  }

  _showCupertinoDialog() {
    //  CupertinoAlertDialog
  }

  _showCupertinoButton() {
    //  CupertinoPikcer
  }
}
