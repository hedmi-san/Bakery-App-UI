// ignore: file_names
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final String text;
  final String phrase;

  const TextForm({
    Key? key,
    required this.text,
    required this.phrase,
  }) : super(key: key);

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            widget.text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            obscureText:
                widget.phrase.contains('password') ? obscureText : false,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.phrase,
              hintStyle: const TextStyle(
                color: Color.fromRGBO(115, 115, 115, 1),
                fontSize: 18,
                fontWeight: FontWeight.w100,
              ),
              filled: true,
              fillColor: const Color.fromRGBO(249, 180, 3, 0.13),
              suffixIcon: widget.phrase.contains('password')
                  ? IconButton(
                      icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
