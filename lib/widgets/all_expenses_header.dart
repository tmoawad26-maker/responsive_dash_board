import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
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
            'Monthly',
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
