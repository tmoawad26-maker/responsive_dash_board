import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/income_section.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/my_cards_and_transaction_history_section.dart';

class MyCardsAndIncomeSection extends StatelessWidget {
  const MyCardsAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        MyCardsAndTransactionHistorySection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection()
      ],
    );
  }
}
