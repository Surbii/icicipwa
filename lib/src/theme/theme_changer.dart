import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;
  ThemeChanger(this._themeData);
  bool _isDark = false;

  getDark() => _isDark;

  getTheme() => _themeData;
  setTheme(ThemeData themeData){
    if(_isDark == false)
      _isDark = true;
    else
      _isDark = false;
    _themeData = themeData;
    notifyListeners();
  }
}