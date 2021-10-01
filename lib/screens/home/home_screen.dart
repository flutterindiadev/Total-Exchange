import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:total_exchange/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:total_exchange/screens/buy_and_sell/components/graph.dart';
import 'package:total_exchange/screens/landing/landing_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Image> logoImages = [
    Image.asset('assets/images/BTC.png'),
    Image.asset('assets/images/ETH.png'),
    Image.asset('assets/images/LTC.png'),
    Image.asset('assets/images/XRP.png'),
    Image.asset('assets/images/ZEC.png')
  ];
  List<String> letter = ["BTC", "ETH", "LTC", "XRP", "ZEC"];
  List<String> fullNames = [
    "Bitcoin",
    "Ethereum",
    "Litcoin",
    "Ripple",
    "Zcash"
  ];
  List<Color> colors = [
    Colors.orange.withOpacity(0.2),
    Colors.purple.withOpacity(0.2),
    Colors.green.withOpacity(0.2),
    Colors.blue.withOpacity(0.2),
    Colors.black.withOpacity(0.2)
  ];
  List<Color> mainColors = [
    Colors.orange.withOpacity(0.8),
    Colors.purple.withOpacity(0.8),
    Colors.green.withOpacity(0.8),
    Colors.blue.withOpacity(0.8),
    Colors.black.withOpacity(0.8)
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      // child: Scaffold(
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height / 3,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      kDarkPurple,
                      kPurple,
                    ]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  scale: 1.5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome to \nTotal Exchange",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Charts",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.4),
                  )),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: kPurple,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height / 2,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: logoImages.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Coin details screen here !!
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 8, top: 8),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: kGrey.withOpacity(0.2)))),
                        child: Row(
                          children: [
                            ClipOval(
                              child: Container(
                                height: 60,
                                width: 60,
                                color: colors[index],
                                child: Center(
                                  child: logoImages[index],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      letter[index],
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900)),
                                    ),
                                    Text(
                                      "54.21%",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 10, color: kGrey)),
                                    )
                                  ],
                                ),
                                Text(
                                  fullNames[index],
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          color: kGrey, fontSize: 14)),
                                )
                              ],
                            ),
                            // Expanded(
                            //
                            //     child: LineChartSample2(aspectRatio:2,)),
                            const SizedBox(
                              width: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$29 850.15",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  "1.12412 BTC",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.withOpacity(0.4),
                                  )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
