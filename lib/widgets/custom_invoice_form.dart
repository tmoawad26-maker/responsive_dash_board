import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/customer_data_widget.dart';

class CustomInvoiceForm extends StatelessWidget {
  const CustomInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomerDataWidget(
                title: 'Type Customer name',
                hintText: 'Enter Customer name',
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomerDataWidget(
                title: 'Type Customer Email',
                hintText: 'Enter Customer Email',
              ),
            ),
          ],
         ),

        // Row(
        //   children: [
        //     Expanded(
        //       child: CustomerDataWidget(
        //         title: 'Type Customer Items',
        //         hintText: 'Enter Items',
        //       ),
        //     ),
        //     SizedBox(
        //       width: 24,
        //     ),
        //     Expanded(
        //       child: CustomerDataWidget(
        //         title: 'Type Customer Invoice Number',
        //         hintText: 'Enter Customer Invoice Number',
        //       ),
        //     ),
        //   ],
        // )
           ]
        );
  }
}
