// ignore_for_file: use_build_context_synchronously

import 'package:bakeryapp/screens/login.dart';
import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  /// this function to check if the user is already loged or not
  /// i didn't complete it  cause in the time i wrote this code ther was no data base
  /// nor authentification so it's up to the backend developer to do it
  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const LoginInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: Text(
          'Splash Screen ',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ));
  }
}
