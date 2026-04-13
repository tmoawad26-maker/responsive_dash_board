import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
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
      child: const  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          QuickInvoiceHeader()
        ],
      ),
    );
  }
}

