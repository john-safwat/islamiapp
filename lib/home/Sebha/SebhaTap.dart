import 'package:flutter/material.dart';
import 'package:islami/themeopject.dart';

class SebhaTap extends StatefulWidget {
  static const String routeName = 'Sebha tap';

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int Tasbeh_count = 0;
  int round_number = 0;

  String Tasbeh_text = 'سبحان الله';

  double sebha_angle = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(top: 20, bottom: 0, left: 40),
          child: Image.asset('assets/images/head of seb7a.png',width: 70,),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(1010),
          onTap: () {
            Tasbeh_count++;
            if (round_number == 0) {
              Tasbeh_text = 'سبحان الله';
              if (Tasbeh_count == 34) {
                Tasbeh_count = 1;
                round_number = 1;
                Tasbeh_text = 'الحمد الله';
              }
            } else if (round_number == 1) {
              Tasbeh_text = 'الحمد الله';
              if (Tasbeh_count == 34) {
                Tasbeh_count = 1;
                round_number = 2;
                Tasbeh_text = 'الله اكبر';
              }
            } else if (round_number == 2) {
              Tasbeh_text = 'الله اكبر';
              if (Tasbeh_count == 34) {
                Tasbeh_count = 1;
                round_number = 0;
                Tasbeh_text = 'سبحان الله';
              }
            } else {
              Tasbeh_count = 0;
            }
            sebha_angle += 12;
            setState(() {});
          },
          child: Transform.rotate(
            angle: sebha_angle,
            child: Container(
              width: 150,
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/body of seb7a.png'),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(30),
          child: const Text(
            'عدد التسبيحات',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyTheme.primaryColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                blurStyle: BlurStyle.normal,
                offset: Offset.zero,
                spreadRadius: 0,
              ),
            ],
          ),
          padding: const EdgeInsets.all(20),
          child: Text(
            "$Tasbeh_count",
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: MyTheme.primaryColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                blurStyle: BlurStyle.normal,
                offset: Offset.zero,
                spreadRadius: 0,
              ),
            ],
          ),
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text(
            Tasbeh_text,
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
