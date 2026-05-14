import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/custom_text_button.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/separate_items_widget.dart';
import 'latest_transaction.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         const  QuickInvoiceHeader(),
         const  LatestTransaction(),
         const  SeparateItemsWidget(),
         const  CustomInvoiceForm(),
          CustomTextButton(height: 62,onPressed: (){},)
        ],
      ),
    );
  }
}
