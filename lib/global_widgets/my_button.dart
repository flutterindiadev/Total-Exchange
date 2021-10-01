import 'package:flutter/material.dart';
import 'package:total_exchange/constants/colors.dart';


class MyButton extends StatelessWidget {
  MyButton({Key? key,
    required this.text
  }) : super(key: key);
  String text;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 195,
        decoration: BoxDecoration(
          color: kPurple,
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kDarkPurple,
                kPurple,
              ]

          ),

        ),
        child:Center(child:
        Text(text, style: Theme.of(context).textTheme.button,))
    );
  }
}