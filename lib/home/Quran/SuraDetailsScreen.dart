import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/themeopject.dart';
import 'package:provider/provider.dart';

import '../../settingsprovider/Setting_provider.dart';

class SuraDetailsScreenArguments {
  String SuraName;
  int index ;
  SuraDetailsScreenArguments({required this.SuraName,required this.index});
}

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName =  "sura details screen";

  SuraDetailsScreen();

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> aya = [];
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    SuraDetailsScreenArguments args = ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArguments;
    if (aya.length==0){
      readText(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingsProvider.getmainBackground()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.SuraName),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            aya.isEmpty? const Center(child: CircularProgressIndicator()):
             Expanded(
               child: Card(
                   color: settingsProvider.currentTheme == ThemeMode.light? Colors.white : Theme.of(context).primaryColor,
                  margin:const EdgeInsets.all(30),
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child :Padding(
                    padding:const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            Icon(Icons.play_circle_outline_outlined , size: 30, color:  Theme.of(context).accentColor,),
                            Container(
                              margin:const EdgeInsets.symmetric(horizontal:10 , vertical: 10),
                              child: Text(args.SuraName,style: Theme.of(context).textTheme.headline1),
                            ),
                          ],
                        ),
                        Container(
                          color: Theme.of(context).accentColor,
                          height: 3,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: aya.length-1,
                            itemBuilder: (_, index) => Text(aya[index] ,
                              style: Theme.of(context).textTheme.headline1,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                      ],
                    )
                  )
               )
             )
          ],
        ),
      ),
    );
  }

  void readText (int index)async {
    String content = await rootBundle.loadString("assets/text/${index+1}.txt");
    var lines = content.split("\n");
    aya = lines ;
    setState(() {});
  }
}
