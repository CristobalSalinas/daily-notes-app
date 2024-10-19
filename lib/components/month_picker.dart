import 'package:flutter/material.dart';
import 'package:testing_flutter/components/month_text.dart';
import 'package:testing_flutter/components/styled_text.dart';

class MonthPicker extends StatefulWidget {
  final int initialMonth;
  final int initialDay;

  const MonthPicker({super.key, required this.initialMonth, required this.initialDay});

  @override
  State<MonthPicker> createState() => _MonthPickerState();
}

class _MonthPickerState extends State<MonthPicker> {
  late int selectedMonthIndex;
  final List<String> meses = [
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre',
  ];

  @override
  void initState(){
    super.initState();
    selectedMonthIndex = widget.initialMonth - 1;
  }

  void changeSelectedMonthIndex(int newIndex){
    setState(() {
      selectedMonthIndex = newIndex;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => changeSelectedMonthIndex(index),
            child: MonthText(text: meses[index], selected: index == selectedMonthIndex,),
          );
        },
        separatorBuilder: (context,index) => const SizedBox(width: 10,), 
        itemCount: meses.length
      ),
    );
  }
}