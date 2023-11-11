import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage='en';
  ThemeMode apptheme=ThemeMode.light;
  void changeLanguage(String newLanguage){
    if(appLanguage==newLanguage){
      return;
    }
    appLanguage=newLanguage;
    notifyListeners();
  }
  void changetheme(ThemeMode theme){
    if(apptheme==theme){
      return;
    }
    apptheme=theme;
    notifyListeners();
  }
  bool isDarkMode(){
    if(apptheme==ThemeMode.dark){
      return true;
    }
    return false;
  }

}