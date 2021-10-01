import 'package:flutter/material.dart';
import 'package:total_exchange/constants/colors.dart';

class CreateAccountButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kDarkPurple,
                kPurple,
              ]

          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Do not have an account? ", style: Theme
                .of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: kWhite),),
            Text("Create Account", style: Theme
                .of(context)
                .textTheme
                .bodyText1!
                .copyWith(
                fontWeight: FontWeight.bold, color: kWhite, fontSize: 16),)
          ],
        ),
      ),
    );
  }


}