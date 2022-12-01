import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/settings/Show_Theme_buttom_shete.dart';

class  MyTheme {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff141A2E);
  static const Color gold = Color(0xffFACC1D);
  static ThemeData LightTheme = ThemeData(
    accentColor: primaryColor,
    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),
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
    textTheme:const TextTheme(
        headline1: TextStyle(color: Colors.black , fontSize: 24 ,),
        headline2: TextStyle(color: Colors.black , fontSize: 20),
        headline3: TextStyle(color: Colors.white , fontSize: 20),
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
        size: 30,
      ),
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Color(0xffffffff),
        size: 30,
      ),
    ),
    primaryColor: primaryColor,
  );
  static ThemeData DarkTheme = ThemeData(

    bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: darkprimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    ),

    accentColor: gold,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.white , fontSize: 24 ,),
      headline2: TextStyle(color: Colors.white , fontSize: 20),
      headline3: TextStyle(color: Colors.black , fontSize: 24),
    ),
    canvasColor: darkprimary,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkprimary,

      selectedItemColor: gold,
      unselectedItemColor: Color(0xffffffff),

      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        decorationColor: gold,
      ),

      selectedIconTheme:IconThemeData(
        color: gold,
        size: 30,
      ),
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Color(0xffffffff),
        size: 30,
      ),
    ),
    primaryColor: darkprimary,
  );
}