import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:total_exchange/constants/colors.dart';
import 'package:total_exchange/global_widgets/my_button.dart';
import 'package:total_exchange/global_widgets/my_text_form_field.dart';
import 'package:total_exchange/screens/home/home_screen.dart';
import 'package:total_exchange/screens/landing/landing_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  color: kPurple,
                ),
                Text(
                  "Back",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: kPurple,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
          child: Column(
        children: [
          CircleAvatar(
            child:
                Container(child: SvgPicture.asset("assets/images/avatar.svg")),
            radius: 60,
            backgroundColor: kLightPurple.withOpacity(0.1),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                "Innovation distinguishes between a leader and a follower",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextFormFeild(
            hintText: "Full Name",
            icon: Icons.account_circle_outlined,
            isObscure: false,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextFormFeild(
              hintText: "Email", icon: Icons.email_outlined, isObscure: false),
          const SizedBox(
            height: 10,
          ),
          MyTextFormFeild(
              hintText: "Password", icon: Icons.lock_outline, isObscure: false),
          const SizedBox(
            height: 10,
          ),
          MyTextFormFeild(
              hintText: "Confirm Password",
              icon: Icons.lock_outline,
              isObscure: false),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LandingScreen()));
            },
            child: MyButton(
              text: "SIGNUP",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "or",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Login with a social account",
              style: Theme.of(context).textTheme.bodyText1),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/facebook.svg"),
              const SizedBox(
                width: 30,
              ),
              SvgPicture.asset("assets/images/twitter.svg"),
              const SizedBox(
                width: 30,
              ),
              SvgPicture.asset("assets/images/google-plus.svg"),
            ],
          ),
        ],
      )),
    );
  }
}
