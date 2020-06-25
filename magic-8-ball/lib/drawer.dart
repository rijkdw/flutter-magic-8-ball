import 'package:flutter/material.dart';
import 'package:magic_8_ball/settings_model.dart';
import 'package:provider/provider.dart';

class SettingsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue[700],
                  Colors.blue[300],
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Vibrate',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 18,
              ),
            ),
            trailing: Consumer<SettingsModel>(builder: (context, model, child) {
              return Switch(
                value: model.vibrate,
                onChanged: (newVal) => model.vibrate = newVal,
              );
            }),
          ),
        ],
      ),
    );
  }
}
