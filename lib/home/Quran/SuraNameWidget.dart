import 'package:flutter/material.dart';
import 'package:islami/home/Quran/SuraDetailsScreen.dart';
import 'package:islami/themeopject.dart';

class SuraNameAndAyaNumber extends StatelessWidget {
  String SuraName;
  String AyaNumber;
  int index;
  SuraNameAndAyaNumber(
      {required this.SuraName, required this.AyaNumber, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments:
                SuraDetailsScreenArguments(SuraName: SuraName, index: index));
      },
      child: Row(
        children: [
          Expanded(
            child: Text(
              AyaNumber,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              SuraName,
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
