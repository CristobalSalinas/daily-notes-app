import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final bool big;
  const StyledText({super.key, required this.text, this.big = false});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: big ? 28 : 16
    ),);
  }
}