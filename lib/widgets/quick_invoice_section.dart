import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

import 'latest_transaction.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: CustomBackgroundContainer(
        padding: 10,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              QuickInvoiceHeader(),
              SizedBox(
                height: 16,
              ),
              Expanded(child: LatestTransaction())
            ],
          ),
        ),
      ),
    );
  }
}
