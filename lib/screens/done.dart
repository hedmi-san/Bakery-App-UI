import 'package:flutter/material.dart';

class DoneScreen extends StatelessWidget {
  DoneScreen({super.key});
  List items = [{}];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('done')),
    );
  }
}
