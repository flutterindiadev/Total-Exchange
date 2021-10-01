import 'package:flutter/material.dart';
import 'package:total_exchange/constants/colors.dart';
import 'package:total_exchange/screens/buy_and_sell/buy_screen.dart';
import 'package:total_exchange/screens/buy_and_sell/buy_sell_screen.dart';
import 'package:total_exchange/screens/home/home_screen.dart';



class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> _screens = [
    HomeScreen(),
    BuyAndSellScreen(),
    BuyScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body:ListView(
        children: [
          _screens[_selectedIndex]
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_quilt_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.radio_button_on),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPurple,
        onTap: _onItemTapped,
      ),
    );

  }
}
