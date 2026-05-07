import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/separate_items_widget.dart';
import 'package:responsive_dash_board/widgets/transaction_history_widget.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          SeparateItemsWidget(
            height: 40,
          ),
          TransactionHistorySection()
        ],
      ),
    );
  }
}
