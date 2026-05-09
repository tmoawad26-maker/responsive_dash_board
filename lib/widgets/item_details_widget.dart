import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/widgets/custom_dot_income_details.dart';

class ItemDetailsWidget extends StatelessWidget {
  const ItemDetailsWidget({
    super.key, required this.incomeDetailsModel,
  });

  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomDotIncomeDetails(
        dotColor: incomeDetailsModel.dotColor,
      ),
      title: Text(
        incomeDetailsModel.title,
        style: Styles.textStyle16
            .copyWith(color: kTextColor, fontWeight: FontWeight.w400),
      ),
      trailing: Text(
        incomeDetailsModel.percentage,
        style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500, color: const Color(0xff208CC8)),
      ),
    );
  }
}

