import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/models/transaction_history_item_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionHistoryItem});
  final TransactionHistoryItemModel transactionHistoryItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
          transactionHistoryItem.title,
        style: Styles.textStyle16.copyWith(color: kTextColor),
      ),
      subtitle: Text(
        transactionHistoryItem.subTitle,
        style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w400, color: const Color(0xffAAAAAA)),
      ),
      trailing: Text(
        '\$${transactionHistoryItem.price}',
        style: Styles.textStyle20.copyWith(color: transactionHistoryItem.priceColor),
      ),
    );
  }
}
