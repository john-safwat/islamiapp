import 'package:flutter/material.dart';
import 'package:islami/themeopject.dart';
import 'package:provider/provider.dart';

import '../../settingsprovider/Setting_provider.dart';
class AhadethContentArgument {
  String Hadeth_Title ;
  String Hadeth_Content ;
  AhadethContentArgument({required this.Hadeth_Content , required this.Hadeth_Title});
}
class AhadethContent extends StatelessWidget {
  static const String routeName =  'ahadeth content page ';
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    AhadethContentArgument args = ModalRoute.of(context)?.settings.arguments as AhadethContentArgument;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage( settingsProvider.getmainBackground()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("إسلامي"),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
           children: [
              Expanded(
                  child: Card(
                    color: settingsProvider.currentTheme == ThemeMode.light? Colors.white : Theme.of(context).primaryColor,
                    margin:const EdgeInsets.all(30),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(args.Hadeth_Title,
                              style: Theme.of(context).textTheme.headline1,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          Container(
                            height: 3,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            color: Theme.of(context).accentColor,
                          ),
                          Expanded(
                              child: ListView(
                                children: [
                                  Text(args.Hadeth_Content,
                                    style: Theme.of(context).textTheme.headline2,
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ),
                  )
              )
           ],
        ),
      ),
    );

  }
}
