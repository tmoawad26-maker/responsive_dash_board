import 'package:flutter/cupertino.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'my_cards_and_income_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardsAndIncomeSection()
        ],
      ),
    );
  }
}
