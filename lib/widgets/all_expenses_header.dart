import 'package:flutter/material.dart';

import '../core/utilts/constants.dart';
import '../core/utilts/styles.dart';
import '../generated/l10n.dart';
class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            S.of(context).periodType,
            style: Styles.textStyle16.copyWith(
              color: kTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
         const  Icon(Icons.arrow_downward, color: kTextColor)
        ],
      ),
    );
  }
}
