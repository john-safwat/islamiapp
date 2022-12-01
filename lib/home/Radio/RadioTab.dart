import 'package:flutter/material.dart';
import 'package:islami/themeopject.dart';

class RadioTap extends StatelessWidget {
  static const String routeName = 'Ahadeth tap';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/radio image.png'),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 40),
          child: Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 55),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous_rounded,
                  size: 60,
                  color: Theme.of(context).accentColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 60,
                  color: Theme.of(context).accentColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next_rounded,
                  size: 60,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
