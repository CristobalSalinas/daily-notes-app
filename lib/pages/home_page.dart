import 'package:flutter/material.dart';
import 'package:testing_flutter/components/month_picker.dart';
import 'package:testing_flutter/components/styled_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtención de mes y día que nos encontramos
    DateTime now = DateTime.now();
    int currentMonth = now.month;
    int currentDay = now.day;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MonthPicker(initialMonth: currentMonth, initialDay: currentDay), // Pasar los valores
            const StyledText(text: "Este es un texto de prueba"),
          ],
        ),
      ),
    );
  }
}
