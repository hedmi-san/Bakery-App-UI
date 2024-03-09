// ignore_for_file: library_private_types_in_public_api

import 'package:get/get.dart';

import '../mainWrapper.dart';
import '../screens/signup.dart';

import 'package:flutter/material.dart';

final email = TextEditingController();
final password = TextEditingController();

class LoginInScreen extends StatelessWidget {
  const LoginInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/LoginPic.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Welcome back!',
                      style: TextStyle(
                        color: Color.fromRGBO(37, 37, 37, 1),
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const EmailTextForm(),
                  const PasswordTextForm(),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color.fromRGBO(249, 180, 3, 1),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LogInButton(),
                  SignUpButton(),
                ],
              )
            ],
          ),
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
            backgroundColor: const Color.fromRGBO(249, 180, 3, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          Get.off(const MainWrapper());
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Login',
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
          backgroundColor: Colors.white,
          side: const BorderSide(
            color: Color.fromRGBO(249, 180, 3, 1),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          Get.off(SignUpScreen());
        },
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Sign up',
            style: TextStyle(
              color: Color.fromRGBO(249, 180, 3, 1),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
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
