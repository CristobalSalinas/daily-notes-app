import 'package:flutter/material.dart';
import 'package:testing_flutter/components/date_selector.dart';
import 'package:testing_flutter/components/styled_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DateSelector(),
          ],
        ),
      ),
    );
  }
}
