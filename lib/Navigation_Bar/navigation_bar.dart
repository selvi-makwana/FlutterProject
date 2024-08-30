import 'package:cotterncharm/Home_Page/home_page.dart';
import 'package:cotterncharm/My_Cart/my_cart.dart';
import 'package:cotterncharm/My_Profile/profile_page.dart';
import 'package:flutter/material.dart';

class CotternCharmNavigationBar extends StatefulWidget {
  const CotternCharmNavigationBar({super.key});

  @override
  State<CotternCharmNavigationBar> createState() =>
      _CotternCharmNavigationBarState();
}

class _CotternCharmNavigationBarState extends State<CotternCharmNavigationBar> {
  int currantPageIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const MyCart(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currantPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        unselectedFontSize: 10,
        unselectedItemColor: Colors.white70,
        currentIndex: currantPageIndex,
        onTap: (value) {
          setState(
            () {
              currantPageIndex = value;
            },
          );
        },
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 40,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_checkout_rounded,
              size: 40,
            ),
            label: "My Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              size: 40,
            ),
            label: "My Profile",
          ),
        ],
      ),
    );
  }
}
