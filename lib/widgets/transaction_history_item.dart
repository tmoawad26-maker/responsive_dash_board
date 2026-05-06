import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        'Cash Withdrawal',
        style: Styles.textStyle16.copyWith(color: kTextColor),
      ),
      subtitle: Text(
        '13 Apr, 2022 ',
        style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w400, color: const Color(0xffAAAAAA)),
      ),
      trailing:   Text('\$20,129',style: Styles.textStyle20.copyWith(
        color:  const Color(0xffF3735E)
      ),),
    );
  }
}
