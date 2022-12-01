import 'package:flutter/material.dart';
import 'package:islami/home/Ahadeth/AhadethTap.dart';
import 'package:islami/home/Quran/QuranTap.dart';
import 'package:islami/home/Radio/RadioTab.dart';
import 'package:islami/home/Sebha/SebhaTap.dart';
import 'package:islami/home/settings/settingsscreen.dart';
import 'package:provider/provider.dart';

import '../settingsprovider/Setting_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedindex = 0;
  List<Widget> taps = [QuranTap(),AhadethTap(),SebhaTap(),RadioTap(),SettingsScreen()];
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsProvider.getmainBackground()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:const Text("إسلامي"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            selectedindex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_read.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: 'Ahadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'settings'),

          ],
        ),
        body: taps[selectedindex],
      ),
    );
  }
}
