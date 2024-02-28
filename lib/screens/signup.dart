import 'package:bakeryapp/screens/login.dart';
import 'package:flutter/material.dart';

import '../widgets/textForm.dart';
import 'bakerHome.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset('assets/images/coloredheading.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              'Welcome to Appname',
              style: TextStyle(
                fontSize: 32,
                color: Color.fromRGBO(37, 37, 37, 1),
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 150),
                    child: Text(
                      'Are you a?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const BakerSelectionButton(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      const DriverSelectionButton(),
                    ],
                  )
                ],
              ),
            ),
            const TextForm(
              text: 'Full name',
              phrase: 'Enter your name',
            ),
            const TextForm(
              text: 'Phone number',
              phrase: 'Enter your phone number',
            ),
            const TextForm(
              text: 'Email',
              phrase: 'Enter your email',
            ),
            const TextForm(
              text: 'Password',
              phrase: 'Enter your password',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: const Color.fromRGBO(249, 180, 3, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BakerHomeScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        color: Color.fromRGBO(249, 180, 3, 1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginInScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Login',
                          style: TextStyle(
                            color: Color.fromRGBO(249, 180, 3, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DriverSelectionButton extends StatefulWidget {
  const DriverSelectionButton({
    super.key,
  });

  @override
  State<DriverSelectionButton> createState() => _DriverSelectionButtonState();
}

class _DriverSelectionButtonState extends State<DriverSelectionButton> {
  Color buttonColor = const Color.fromRGBO(115, 115, 115, 1);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          setState(() {
            buttonColor =
                (buttonColor == const Color.fromRGBO(115, 115, 115, 1))
                    ? const Color.fromRGBO(255, 255, 255, 1)
                    : const Color.fromRGBO(115, 115, 115, 1);
          });
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
          child: Text(
            'Driver',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class BakerSelectionButton extends StatefulWidget {
  const BakerSelectionButton({
    super.key,
  });

  @override
  State<BakerSelectionButton> createState() => _BakerSelectionButtonState();
}

class _BakerSelectionButtonState extends State<BakerSelectionButton> {
  Color buttonColor = const Color.fromRGBO(254, 245, 222, 1);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          setState(() {
            buttonColor =
                (buttonColor == const Color.fromRGBO(254, 245, 222, 1))
                    ? const Color.fromRGBO(249, 180, 3, 1)
                    : const Color.fromRGBO(254, 245, 222, 1);
          });
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
          child: Text(
            'Baker',
            style: TextStyle(
              color: Color.fromRGBO(37, 37, 37, 1),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
