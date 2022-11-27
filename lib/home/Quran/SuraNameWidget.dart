import 'package:flutter/material.dart';

class SuraNameAndAyaNumber extends StatefulWidget {
  String SuraName ;
  String AyaNumber ;
  SuraNameAndAyaNumber({required this.SuraName, required this.AyaNumber});

  @override
  State<SuraNameAndAyaNumber> createState() => _SuraNameAndAyaNumberState();
}

class _SuraNameAndAyaNumberState extends State<SuraNameAndAyaNumber> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              height: 45,
              color: Colors.white,
              margin:const EdgeInsets.symmetric(horizontal: 2 ),
              child: Text(widget.AyaNumber,
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),

            )
        ),
        Expanded(
            child: InkWell(
              enableFeedback: true,
              onTap: ()=> {
                print ("john"),

                setState(() {

                }),
              },
              child: Container(
                height: 45,
                color: Colors.white,
                margin:const EdgeInsets.symmetric(horizontal: 2 ),
                child: Text(widget.SuraName,
                  style:const TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            )
        )
      ],
    );
  }
}
