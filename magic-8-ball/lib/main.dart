import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text(
          'ASK ME A QUESTION',
          style: TextStyle(
            letterSpacing: 1,
            wordSpacing: 3,
            color: Colors.white,
            fontFamily: 'Source Sans Pro',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int _faceNum = 1;
  bool _showCover = false;

  void _askSequence() async {
    setState(() {
      _showCover = true;
      _faceNum = Random().nextInt(5) + 1;
    });
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      _showCover = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onPressed: () => _askSequence(),
      padding: EdgeInsets.all(0),
      child: Center(
        child: Image.asset( _showCover ? 'images/ball0.png' : 'images/ball$_faceNum.png'),
      ),
    );
  }
}
