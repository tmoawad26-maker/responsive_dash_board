import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      children: [
      AllExpensesSection(),
        SizedBox(height: 12,),
        QuickInvoiceSection()
      ],
    );
  }
}

