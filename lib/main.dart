import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/Ahadeth/AhadethContent.dart';
import 'package:islami/home/Quran/SuraDetailsScreen.dart';
import 'package:islami/home/homescreen.dart';
import 'package:islami/home/settings/settingsscreen.dart';
import 'package:islami/settingsprovider/Setting_provider.dart';
import 'package:islami/splashscreen.dart';
import 'package:islami/themeopject.dart';
import 'package:provider/provider.dart';

void main ()
{
  runApp( ChangeNotifierProvider(
      child: MyApp(),
      create: (_)=>SettingProvider(),
  )
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "islami app",
      routes: {
        HomeScreen.routeName : (_)=> HomeScreen(),
        Splash_Screen.routeName : (_)=> Splash_Screen(),
        SuraDetailsScreen.routeName : (_)=> SuraDetailsScreen(),
        AhadethContent.routeName :(_) => AhadethContent(),
        SettingsScreen.routeName :(_) => SettingsScreen(),
      },
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: settingsProvider.currentTheme,
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
