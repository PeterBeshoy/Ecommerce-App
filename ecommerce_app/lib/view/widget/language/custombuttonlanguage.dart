import 'package:flutter/material.dart';

class Custombuttonlanguage extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Custombuttonlanguage({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: double.infinity,
              child: MaterialButton(
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: onPressed,
                child: Text(
                  "$text",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
  }
}