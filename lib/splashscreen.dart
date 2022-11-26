import 'package:flutter/material.dart';

class Splash_Screen extends StatelessWidget {
  static const String routeName = "splash screen";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity ,
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: <Color>[
            Color(0xffD4D2D2),
            Color(0xffffffff),
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(child: Image.asset("assets/images/logo.png")),
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/images/logo_part_2.png") ,
            ),
          ],
        ),
      ),
    );
  }
}
