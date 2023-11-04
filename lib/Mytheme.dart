import 'package:flutter/material.dart';

class MyThemeData  {
  static Color primaryLight=Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor =Colors.white;

  static ThemeData lightMode=ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor:Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
          color: blackColor
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,

    ),

    textTheme: TextTheme(
      headline1:TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      subtitle1: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: blackColor,
      ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 23,
          color: blackColor,

        )


  )
  );
}
