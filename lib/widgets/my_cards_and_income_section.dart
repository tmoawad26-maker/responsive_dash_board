import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transaction_history_section.dart';

class MyCardsAndIncomeSection extends StatelessWidget {
  const MyCardsAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyCardsAndTransactionHistorySection(),
        SizedBox(height: 24,),
        Expanded(child: IncomeSection())
      ],
    );
  }
}