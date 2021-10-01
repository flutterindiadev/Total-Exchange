import 'package:flutter/material.dart';
import 'package:total_exchange/constants/colors.dart';


class MyTextFormFeild extends StatelessWidget {
  String hintText;
  bool isObscure;
  IconData? icon;
  MyTextFormFeild({required this.hintText,this.isObscure = false,required  this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: kGrey.shade300)
      ),
      child: TextFormField(
        // obscureText: isObscure,
        decoration:  InputDecoration(
            contentPadding:const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            border: InputBorder.none,
            hintText: hintText,
            suffixIcon: Icon(icon,color: kLightPurple.withOpacity(0.5),)


        ),

      ),);
  }
}