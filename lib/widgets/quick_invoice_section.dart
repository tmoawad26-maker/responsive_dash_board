import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

import 'latest_transaction.dart';
class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 604,
      height: 566,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24,vertical: 12),
        child:    Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 24,),
            Align(
              alignment: Alignment.topLeft,
                child: LatestTransaction())
          ],
        ),
      ),
    );
  }
}


