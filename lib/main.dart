import 'package:flutter/material.dart';
import 'package:islami/Home/Homepage.dart';
import 'package:islami/Mytheme.dart';
import 'package:islami/quran/SuraDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: MyThemeData.lightMode,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
      initialRoute: HomePage.routeName,


    );
  }
}

