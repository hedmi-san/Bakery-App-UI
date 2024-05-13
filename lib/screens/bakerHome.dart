// ignore_for_file: file_names

import 'package:flutter/material.dart';
import './done.dart';
import './waiting.dart';

class BakerHomeScreen extends StatefulWidget {
  const BakerHomeScreen({super.key});

  @override
  State<BakerHomeScreen> createState() => _BakerHomeScreenState();
}

class _BakerHomeScreenState extends State<BakerHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Image(
          image: AssetImage('assets/images/breadbrown.png'),
        ),
        backgroundColor: Colors.transparent,
        title: const Text(
          'Orders',
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 50,
            ),
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TabBar(
                      unselectedLabelColor: Colors.black,
                      labelStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w400),
                      labelColor: Colors.white,
                      indicatorWeight: 2,
                      indicatorColor: const Color.fromRGBO(249, 180, 3, 1),
                      indicator: const BoxDecoration(
                          color: Color.fromRGBO(249, 180, 3, 1),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      controller: tabController,
                      tabs: const [
                        Tab(
                          text: 'waiting',
                        ),
                        Tab(
                          text: 'done',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  WaitingScreen(),
                  DoneScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
