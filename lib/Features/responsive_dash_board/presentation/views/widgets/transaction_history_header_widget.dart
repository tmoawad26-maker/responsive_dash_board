import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

class TransactionHistoryHeaderWidget extends StatelessWidget {
  const TransactionHistoryHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.textStyle20.copyWith(color: kTextColor),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            'See all',
            style: Styles.textStyle16
                .copyWith(color: kPrimaryColor, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
