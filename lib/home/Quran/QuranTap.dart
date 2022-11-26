import 'package:flutter/material.dart';
import 'package:islami/themeopject.dart';

class QuranTap extends StatelessWidget {
  static const String routeName = 'Quran tap';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('assets/images/quran_image.png'),
          alignment: Alignment.topCenter,
        ),
        Row(

        ),
      ],
    );
  }
}
