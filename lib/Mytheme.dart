import 'package:flutter/material.dart';

class MyThemeData  {
  static Color primaryLight=Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor =Colors.white;
  static Color primaryDark=Color(0xff141A2E);
  static Color yellowColor=Color(0xffFACC1D);

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
      backgroundColor: primaryLight,

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

        ),
        headline2: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20,
          color: whiteColor,

        ),
        headline3: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 30,
          color: primaryLight,

        ),
        headline4: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: whiteColor,

        )



    )
  );
  static ThemeData darkMode=ThemeData(
      primaryColor:primaryDark,
      scaffoldBackgroundColor:Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: whiteColor
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: whiteColor,
        backgroundColor: primaryDark,
      ),

      textTheme: TextTheme(
          headline1:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ),
          subtitle1: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: whiteColor,
          ),
          subtitle2: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23,
            color: blackColor,

          ),
          headline2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: whiteColor,

          ),
          headline3: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 30,
            color: primaryLight,

          ),
        headline4: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: primaryDark,

      )



      )
  );
}
