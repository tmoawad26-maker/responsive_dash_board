import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/models/transaction_history_item_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.transactionHistoryItem});
  final TransactionHistoryItemModel transactionHistoryItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: ListTile(
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
          style: Styles.textStyle20.copyWith(color: 
          transactionHistoryItem.isWithdrawal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
  
