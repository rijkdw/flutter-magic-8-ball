import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:magic_8_ball/drawer.dart';
import 'package:magic_8_ball/eightball.dart';
import 'package:magic_8_ball/settings_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingsModel(),
      child: MaterialApp(
        title: 'Magic 8 Ball',
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SettingsDrawer(),
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

