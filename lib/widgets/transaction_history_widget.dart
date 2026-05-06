import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: Styles.textStyle20.copyWith(color: kTextColor),
            ),
            Text(
              'See all',
              style: Styles.textStyle16
                  .copyWith(color: kPrimaryColor, fontWeight: FontWeight.w500),
            )
          ],
        ),
       const  SizedBox(height: 16,),
        const TransactionHistoryItem()
      ],
    );
  }
}

