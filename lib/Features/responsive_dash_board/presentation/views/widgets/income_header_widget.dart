import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/core/utilts/constants.dart';
import 'package:responsive_dash_board/Features/core/utilts/styles.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/all_expenses_header.dart';

class IncomeHeaderWidget extends StatelessWidget {
  const IncomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: Styles.textStyle20.copyWith(color: kTextColor),
        ),
        const DateExpensesAndIncome(),
      ],
    );
  }
}
