import 'package:bakeryapp/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../mainWrapper.dart';

final name = TextEditingController();
final phoneNumber = TextEditingController();
final email = TextEditingController();
final password = TextEditingController();

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
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
            const FullNameTextForm(),
            const PhoneNumberTextForm(),
            const EmailTextForm(),
            const PasswordTextForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignUpButton(),
                LogInButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Get.off(const LoginInScreen());
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
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12),
      width: MediaQuery.of(context).size.width * 0.6,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: const Color.fromRGBO(249, 180, 3, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          Get.off(const MainWrapper());
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
                    ? const Color.fromRGBO(37, 37, 37, 1)
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

class FullNameTextForm extends StatefulWidget {
  const FullNameTextForm({
    Key? key,
  }) : super(key: key);

  @override
  _FullNameTextFormState createState() => _FullNameTextFormState();
}

class _FullNameTextFormState extends State<FullNameTextForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Full name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: name,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your name',
              hintStyle: TextStyle(
                color: Color.fromRGBO(115, 115, 115, 1),
                fontSize: 18,
                fontWeight: FontWeight.w100,
              ),
              filled: true,
              fillColor: Color.fromRGBO(249, 180, 3, 0.13),
            ),
          ),
        ),
      ],
    );
  }
}

class EmailTextForm extends StatefulWidget {
  const EmailTextForm({
    Key? key,
  }) : super(key: key);

  @override
  _EmailTextFormState createState() => _EmailTextFormState();
}

class _EmailTextFormState extends State<EmailTextForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Email',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: email,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your email',
              hintStyle: TextStyle(
                color: Color.fromRGBO(115, 115, 115, 1),
                fontSize: 18,
                fontWeight: FontWeight.w100,
              ),
              filled: true,
              fillColor: Color.fromRGBO(249, 180, 3, 0.13),
            ),
          ),
        ),
      ],
    );
  }
}

class PasswordTextForm extends StatefulWidget {
  const PasswordTextForm({
    Key? key,
  }) : super(key: key);

  @override
  _PasswordTextFormState createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Password',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: password,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your password',
              hintStyle: const TextStyle(
                color: Color.fromRGBO(115, 115, 115, 1),
                fontSize: 18,
                fontWeight: FontWeight.w100,
              ),
              filled: true,
              fillColor: const Color.fromRGBO(249, 180, 3, 0.13),
              suffixIcon: IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PhoneNumberTextForm extends StatefulWidget {
  const PhoneNumberTextForm({
    Key? key,
  }) : super(key: key);

  @override
  _PhoneNumberTextFormState createState() => _PhoneNumberTextFormState();
}

class _PhoneNumberTextFormState extends State<PhoneNumberTextForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Phone number',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: phoneNumber,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your phone number',
              hintStyle: TextStyle(
                color: Color.fromRGBO(115, 115, 115, 1),
                fontSize: 18,
                fontWeight: FontWeight.w100,
              ),
              filled: true,
              fillColor: Color.fromRGBO(249, 180, 3, 0.13),
            ),
          ),
        ),
      ],
    );
  }
}
