import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String _theme = "DARK";

  String get theme => _theme;

  setTheme(String theme) {
    _theme = theme;
    notifyListeners();
  }
}
