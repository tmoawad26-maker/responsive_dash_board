import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
           IncomeHeaderWidget()
      ],
    );
  }
}

class IncomeHeaderWidget extends StatelessWidget {
  const IncomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Text('Income',style: Styles.textStyle20.
       copyWith(
           color: kTextColor
       ),),
       const  DateExpensesAndIncome(),
      ],
    );
  }
}