import 'package:flutter/material.dart';
import 'package:magic_8_ball/settings_model.dart';
import 'package:magic_8_ball/utils.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int _faceNum = 1;
  bool _showCover = false;

  void _tapSequence() async {
    // if the cover is being shown, don't execute the sequence
    if (_showCover) return;

    if (Provider.of<SettingsModel>(context, listen: false).vibrate) attemptVibrate(75);
    setState(() {
      _showCover = true;
      _faceNum = Random().nextInt(5) + 1;
    });
    await Future.delayed(Duration(milliseconds: 500));
    if (Provider.of<SettingsModel>(context, listen: false).vibrate) attemptVibrate(125);
    setState(() {
      _showCover = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () => _tapSequence(),
      onLongPress: () => _tapSequence(),
      padding: EdgeInsets.all(0),
      child: Image.asset( _showCover ? 'images/ball0.png' : 'images/ball$_faceNum.png'),
    );
  }
}
