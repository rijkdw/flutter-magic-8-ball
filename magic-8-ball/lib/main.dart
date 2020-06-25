import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(
          'ASK ME ANYTHING',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: EightBall(),
      ),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

  int _faceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset('images/ball$_faceNum.png'),
    );
  }
}

