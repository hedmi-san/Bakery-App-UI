// ignore_for_file: must_be_immutable, file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
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

class MyBottomNavBar extends StatefulWidget {
  final void Function(int)? onTapChange;

  const MyBottomNavBar({Key? key, required this.onTapChange}) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 55, vertical: 18),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(37, 37, 37, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(37, 37, 37, 0.3),
                offset: Offset(0, 20),
                blurRadius: 20,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                  widget.onTapChange?.call(0);
                },
                icon: Icon(
                  Icons.notifications_outlined,
                  color: _selectedIndex == 0
                      ? Colors.yellow
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  widget.onTapChange?.call(1);
                },
                icon: Icon(
                  Icons.storefront_outlined,
                  color: _selectedIndex == 1
                      ? Colors.yellow
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                  widget.onTapChange?.call(2);
                },
                icon: Icon(
                  Icons.person_outline,
                  color: _selectedIndex == 2
                      ? Colors.yellow
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
