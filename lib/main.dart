import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icicipwa/src/screens/home.dart';
import 'package:icicipwa/src/theme/app_theme.dart';
import 'package:icicipwa/src/theme/theme_changer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeChanger>(
      create: (context) => ThemeChanger(AppThemes.lightTheme()),
      child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      //statusBarBrightness: Brightness.dark
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ICICI PWA',
        theme: Provider.of<ThemeChanger>(context).getTheme(),
        home: const Home(),
    );
  }
}