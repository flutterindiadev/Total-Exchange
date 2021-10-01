import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:total_exchange/screens/logIn/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:total_exchange/screens/signUp/sign_up_screen.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
            headline1: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 24, color: kWhite)),
            bodyText1:
                GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 14)),
            button: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: kWhite,
            ))),
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
