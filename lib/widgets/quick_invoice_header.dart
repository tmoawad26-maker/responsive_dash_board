import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';

import '../core/utilts/styles.dart';
import '../generated/l10n.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).quickInvoice,
          style: Styles.textStyle20.copyWith(color: kTextColor),
        ),
        const Spacer(),
        CircleAvatar(
          radius: 17,
          backgroundColor: Colors.grey.withOpacity(0.1),
          child: const Icon(
            Icons.add,
            color: kPrimaryColor,
          ),
        )
      ],
    );
  }
}
