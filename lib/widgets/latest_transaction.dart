import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/transaction_items_list.dart';
import 'package:responsive_dash_board/widgets/transacton_items.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w500, color: const Color(0xff064061)),
        ),
       const  SizedBox(height: 12,),
       const  TransactionItemsList()

      ],
    );
  }
}


