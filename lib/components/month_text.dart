import 'package:flutter/material.dart';

class MonthText extends StatelessWidget {
  final String text;
  final bool selected;
  
  const MonthText({super.key, required this.text, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: TextStyle(
        fontSize: 34,
        color: selected 
            ? Colors.black 
            : const Color.fromARGB(255, 150, 150, 150),
      ),
    );
  }
}