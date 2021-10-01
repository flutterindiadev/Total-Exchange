import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:total_exchange/constants/colors.dart';
import 'package:total_exchange/global_widgets/my_button.dart';
import 'package:total_exchange/global_widgets/my_text_form_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:total_exchange/screens/home/home_screen.dart';
import 'package:total_exchange/screens/landing/landing_screen.dart';
import 'package:total_exchange/screens/signUp/sign_up_screen.dart';

import 'components/create_account_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Container(
                          child: SvgPicture.asset("assets/images/avatar.svg")),
                      radius: 60,
                      backgroundColor: kLightPurple.withOpacity(0.1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                          "Great things are not done by impulse, but a \n series of small things brought together",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextFormFeild(
                      hintText: "Email",
                      icon: Icons.email_outlined,
                      isObscure: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextFormFeild(
                        hintText: "Password",
                        icon: Icons.lock_outline,
                        isObscure: true),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Forgot your password?",
                        style: Theme.of(context).textTheme.bodyText1),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                        child: MyButton(
                          text: "LOGIN",
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LandingScreen()));
                        }

                        // Login page route here !
                        ),
                    const SizedBox(
                      height: 40,
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
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: CreateAccountButton()),
          ],
        ),
      ),
    );
  }
}
