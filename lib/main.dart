import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/Ahadeth/AhadethContent.dart';
import 'package:islami/home/Quran/SuraDetailsScreen.dart';
import 'package:islami/home/homescreen.dart';
import 'package:islami/splashscreen.dart';
import 'package:islami/themeopject.dart';

void main ()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "islami app",
      routes: {
        HomeScreen.routeName : (_)=> HomeScreen(),
        Splash_Screen.routeName : (_)=> Splash_Screen(),
        SuraDetailsScreen.routeName : (_)=> SuraDetailsScreen(),
        AhadethContent.routeName :(_) => AhadethContent(),
      },
      theme: MyTheme.LightTheme,
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Splash_Screen(),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: double.infinity,
      ),
    );
  }
}
