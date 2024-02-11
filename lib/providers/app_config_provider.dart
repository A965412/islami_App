import 'package:flutter/material.dart';

class Appcongif extends ChangeNotifier{
  String appLanguage = "ar";
  ThemeMode apptheme = ThemeMode.light;


  void changelanguage (String newlanguage){
    if (appLanguage == newlanguage){
      return ;

    }
    appLanguage = newlanguage;
    notifyListeners();

  }
  void changetheme (ThemeMode newtheme){
    if (apptheme == newtheme){
      return;
    }
      apptheme = newtheme  ;
       notifyListeners();

  }
  bool isDark (){
    return apptheme ==ThemeMode.dark ;
  }
}