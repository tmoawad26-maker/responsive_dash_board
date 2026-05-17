import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/all_expenses_section.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/quick_invoice_section.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Column(
      children: [
        SizedBox(height: 20,),
     AllExpensesSection(),
      SizedBox(height: 24,),
     QuickInvoiceSection(),
      ],
    );
  }
}