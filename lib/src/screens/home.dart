import 'package:flutter/material.dart';
import 'package:icicipwa/src/screens/web/dashboard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebDashboard(),
    );
  }
}
