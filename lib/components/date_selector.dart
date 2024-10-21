import 'package:flutter/material.dart';
import 'package:testing_flutter/components/month_picker.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int currentMonth = now.month;
    int currentDay = now.day;

    return Column(
      children: [
        MonthPicker(initialMonth: currentMonth, initialDay: currentDay),
      ],
    );
  }
}