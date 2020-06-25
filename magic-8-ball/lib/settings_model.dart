import 'package:flutter/material.dart';

class SettingsModel extends ChangeNotifier {

  bool _vibrate = true;

  set vibrate(bool newVal) {
    _vibrate = newVal;
    notifyListeners();
  }

  get vibrate => this._vibrate;

}