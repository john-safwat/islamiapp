import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settingsprovider/Setting_provider.dart';

class showButtomSheetTheme extends StatefulWidget {

  @override
  State<showButtomSheetTheme> createState() => _showButtomSheetThemeState();
}

class _showButtomSheetThemeState extends State<showButtomSheetTheme> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              settingsProvider.changeTheme(ThemeMode.light);
            },
              child: settingsProvider.isdark()?getunSelectedItem("Light"):getSelectedItem("Light"),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              settingsProvider.changeTheme(ThemeMode.dark);
            },
            child: settingsProvider.isdark()?getSelectedItem("Dark"):getunSelectedItem("Dark")
          )
        ],
      ),
    );
  }

  Widget getSelectedItem(String title){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title , style: Theme.of(context).textTheme.headline1?.copyWith(color: Theme.of(context).accentColor) ,),
        Icon(Icons.done_rounded , size:30 , color: Theme.of(context).accentColor,)
      ],
    );
  }
  Widget getunSelectedItem(String title){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title , style: Theme.of(context).textTheme.headline1 ,),
        Icon(Icons.done_rounded , size:30 , color: Colors.white,)
      ],
    );
  }}
