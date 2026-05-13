import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/transaction_history_header_widget.dart';
import 'package:responsive_dash_board/widgets/transaction_history_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const TransactionHistoryHeaderWidget(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w500, color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        // const TransactionHistoryListView()
      ],
    );
  }
}
