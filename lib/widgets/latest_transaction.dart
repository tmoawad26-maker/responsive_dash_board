import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_details.dart';
import 'package:responsive_dash_board/widgets/transaction_items_list.dart';

import '../core/utilts/styles.dart';
import '../generated/l10n.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).latestTransaction,
          style: Styles.textStyle16.
              copyWith(
              fontWeight: FontWeight.w500, color: const Color(0xff064061)),
        ),
       const  SizedBox(height: 12,),
       const  TransactionItemsList(),
       const  SizedBox(height: 24,),
       const  QuickInvoiceDetails()
      ],
    );
  }
}



