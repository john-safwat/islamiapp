import 'package:flutter/material.dart';
import 'package:islami/home/settings/Show_Theme_buttom_shete.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName  = 'setting screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String Theme_text_title = 'Arabic';

  String Theme_mode_title = 'Dark';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Theme" ,style: Theme.of(context).textTheme.headline2,),
            SizedBox(height: 10,),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: (){
                showThemeBottomSheet();
              },
              child: Container(
                padding:const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 2 ,color: Theme.of(context).accentColor),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(Theme_mode_title , style: Theme.of(context).textTheme.headline2,) ,
              ),
            ),
            SizedBox(height: 20,),
            Text("Language" ,style: Theme.of(context).textTheme.headline2,),
            SizedBox(height: 10,),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: (){

              },
              child: Container(
                padding:const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 2 ,color: Theme.of(context).accentColor),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(Theme_text_title , style: Theme.of(context).textTheme.headline2,) ,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showThemeBottomSheet (){
    showModalBottomSheet(context: context, builder: (Context) => showButtomSheetTheme(),);
  }
}
