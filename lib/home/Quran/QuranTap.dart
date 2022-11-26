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
        Container(
          width: double.infinity,
          color: MyTheme.primaryColor,
          margin:const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2 , vertical: 5),
                    padding: EdgeInsets.all(7),
                    color: Colors.white,
                    child: const Text("عدد الايات" ,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2 , vertical: 5),
                    padding: EdgeInsets.all(7),
                    color: Colors.white,
                    child: const Text("اسم السورة" ,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
