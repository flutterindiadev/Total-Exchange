import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:total_exchange/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:total_exchange/global_widgets/my_button.dart';

import 'buy_screen.dart';
import 'components/graph.dart';


class BuyAndSellScreen extends StatefulWidget {
  const BuyAndSellScreen({Key? key}) : super(key: key);

  @override
  _BuyAndSellScreenState createState() => _BuyAndSellScreenState();
}

class _BuyAndSellScreenState extends State<BuyAndSellScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      height: 30,
                      width: 30,
                      color: kLightPurple.withOpacity(0.5),
                      child: Center(child: Text("B",style: TextStyle(fontSize: 16),)),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Text("BTC", style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900
                      )
                  ),),
                  const SizedBox(width: 5,),
                  Text("Bitcoin",style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kGrey,
                          fontSize: 16
                      )
                  ),),
                  SizedBox(width: 80,),
                  Text("\$29 850.15", style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )
                  ),)
                ],
              ),
            ),
            LineChartSample2(
              colors: [
                kLightPurple,
                kLightPurple,
              ],
            ),
            SizedBox(height: 50,),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => BuyScreen()
                  ));
                },
                child: MyButton(text: "Buy / Sell",)),
          ],
        ),
      ),
    );
  }
}
