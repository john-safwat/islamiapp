import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  void changeTheme(ThemeMode newMode){
    currentTheme = newMode;
    notifyListeners();
  }
  String getmainBackground(){
    return currentTheme == ThemeMode.light ?
    "assets/images/background_main.png":"assets/images/dark_background.png";
  }

  bool isdark(){
    return currentTheme == ThemeMode.dark;
  }
}