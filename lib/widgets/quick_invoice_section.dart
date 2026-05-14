import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/widgets/custom_elevated_button.dart';
import 'package:responsive_dash_board/core/utilts/widgets/custom_text_button.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/separate_items_widget.dart';
import 'latest_transaction.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const LatestTransaction(),
          const SeparateItemsWidget(),
          const CustomInvoiceForm(),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                  child: CustomTextButton(
                height: 62,
                onPressed: () {},
              )),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                  child: CustomElevatedButton(
                onPressed: () {},
              ))
            ],
          )
        ],
      ),
    );
  }
}
