import 'package:flutter/material.dart';
import 'package:islami/home/Quran/SuraDetailsScreen.dart';


class SuraNameAndAyaNumber extends StatelessWidget {
  String SuraName;
  String AyaNumber;
  int index ;
  SuraNameAndAyaNumber({required this.SuraName, required this.AyaNumber ,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName, arguments: SuraDetailsScreenArguments(SuraName: SuraName, index: index));
      },
      child: Row(
        children: [
          Expanded(
              child: Container(
                height: 45,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  AyaNumber,
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
              ),
            )
          ),
          Expanded(
            child: Container(
              height: 45,
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                SuraName,
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}


