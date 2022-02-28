import 'package:flutter/material.dart';
import 'package:icicipwa/app_dashboard.dart';
import 'package:icicipwa/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          dividerColor: grey,
          // textTheme: TextTheme(
          //   headline3: TextStyle()
          // ),
          primaryColor: primary),
      debugShowCheckedModeBanner: false,
      home: const AppDashboard(),
    );
  }
}
