import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName:(context) => HomeScreen()
      },
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
      theme:MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,


    );
  }
}

