import 'package:flutter/material.dart';
import 'package:total_exchange/constants/colors.dart';
import 'package:total_exchange/global_widgets/my_button.dart';

import 'components/graph.dart';
import 'package:google_fonts/google_fonts.dart';


class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  bool isBuy = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        body: Container(
          child: SingleChildScrollView(
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
                isBuy == true ?
                LineChartSample2(
                  colors: const [
                    Colors.green,
                    Colors.green,
                  ],
                ) : LineChartSample2(
                  colors: const [
                    Colors.red,
                    Colors.red,
                  ],
                )  ,
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isBuy = !isBuy;
                        });
                      },
                      child: Container(
                        width: size.width / 2,
                        height: 80,
                        color: isBuy == true ? Colors.grey.withOpacity(0.4) : Colors.grey.withOpacity(0.1),

                        child: const Center(
                            child:
                            const Text("Buy",style: TextStyle(fontSize: 20),)),

                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isBuy = !isBuy;
                        });
                      },
                      child: Container(
                        width: size.width / 2,
                        height: 80,
                        color: isBuy == true ? Colors.grey.withOpacity(0.1) : Colors.grey.withOpacity(0.4),

                        child: Center(child: Text("Sell",style: TextStyle(fontSize: 20),)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("At Price", style: TextStyle(color: kGrey.withOpacity(0.8),fontSize: 12),),
                          const SizedBox(height: 5,),
                         const  Text("\$ 28950",style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kGrey.withOpacity(0.2),
                            ),
                            child: const Icon(Icons.add),

                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kGrey.withOpacity(0.2),
                            ),
                            child:const  Icon(Icons.remove),

                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Amount", style: TextStyle(color: kGrey.withOpacity(0.8),fontSize: 12),),
                          const SizedBox(height: 5,),
                          const Text("2",style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding:const  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kGrey.withOpacity(0.2),
                            ),
                            child: const Icon(Icons.add),

                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kGrey.withOpacity(0.2),
                            ),
                            child: const Icon(Icons.remove),

                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total", style: TextStyle(color: kGrey.withOpacity(0.8),fontSize: 12),),
                          const SizedBox(height: 5,),
                          const Text("\$ 57900",style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kGrey.withOpacity(0.2),
                            ),
                            child: const  Icon(Icons.add),

                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kGrey.withOpacity(0.2),
                            ),
                            child: const Icon(Icons.remove),

                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(height: 50,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => BuyScreen()
                      ));
                    },
                    child: Container(
                        height: 45,
                        width: 195,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(5),
                          color: isBuy == true ? Colors.green : Colors.red,

                        ),
                        child:Center(child:
                        Text( isBuy == true ? "Buy" : "Sell" ,
                          style: Theme.of(context).textTheme.button,))
                    ),),
                const SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

