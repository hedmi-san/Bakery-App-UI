// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import './screens/bakerHome.dart';
import './screens/bakerShop.dart';
import './screens/bakerProfile.dart';

class MainWrapper extends StatefulWidget {
  final int? index;
  const MainWrapper({super.key, this.index});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _pageindex = 0;
  final List<Widget> pages = const [
    BakerHomeScreen(),
    BakerShopScreen(),
    BakerProfileScreen()
  ];
  void navigationBottomBar(int index) {
    setState(() {
      _pageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_pageindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child:
            MyBottomNavBar(onTapChange: (index) => navigationBottomBar(index)),
      ),
    );
  }
}

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTapChange;
  MyBottomNavBar({super.key, required this.onTapChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
      child: GNav(
        onTabChange: (value) => onTapChange!(value),
        color: Colors.grey.shade400,
        activeColor: const Color.fromRGBO(255, 200, 58, 1),
        backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: const [
          GButton(
            icon: Icons.notifications_outlined,
          ),
          GButton(
            icon: Icons.storefront_outlined,
          ),
          GButton(
            icon: Icons.person_outline,
          ),
        ],
      ),
    );
  }
}
