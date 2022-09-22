import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Text(text),
        color: Theme.of(context).primaryColor,
        onPressed: onPressed);
  }
}
