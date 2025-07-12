import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: Color.fromARGB(255, 20, 15, 15), fontSize: 30.0),
    );
  }
}
