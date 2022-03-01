import 'package:flutter/material.dart';

class AppThemes {
  static lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: Colors.blue,
      backgroundColor: Colors.white,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
        ),
      ),
      primaryColor: Colors.black,
      buttonColor: Colors.black,
      colorScheme: ColorScheme.light()
    );
  }
  static darkTheme(){
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primarySwatch: Colors.teal,
      backgroundColor: Colors.black,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
      primaryColor: Colors.white,
      buttonColor: Colors.white,
      colorScheme: ColorScheme.dark()
    );
  }
}