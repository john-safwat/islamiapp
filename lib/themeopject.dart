import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  MyTheme {
  static const Color primaryColor = Color(0xffB7935F);
  static ThemeData LightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,

      ),
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
    ),

    canvasColor: primaryColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,

      selectedItemColor: Color(0xff242424),
      unselectedItemColor: Color(0xffffffff),

      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        decorationColor: Color(0xff242424),
      ),

      selectedIconTheme:IconThemeData(
        color: Color(0xff242424),
        size: 48,
      ),
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Color(0xffffffff),
        size: 48,
      ),
    ),
    primaryColor: primaryColor,
  );
}