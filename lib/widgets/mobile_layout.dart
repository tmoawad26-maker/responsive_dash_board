import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20,),
       AllExpensesSection()
      ],
    );
  }
}