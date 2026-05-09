import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details_widget.dart';

class IncomeItemDetailsList extends StatelessWidget {
  const IncomeItemDetailsList({super.key});
  static const incomeDetailsList = [
    IncomeDetailsModel(
        title: 'Design service',
        percentage: '40%',
        dotColor: Color(0xff208CC8)),
    IncomeDetailsModel(
        title: 'Design product', percentage: '25%', dotColor: kPrimaryColor),
    IncomeDetailsModel(
        title: 'Product royalti', percentage: '20%', dotColor: kTextColor),
    IncomeDetailsModel(
        title: 'Other', percentage: '22%', dotColor: Color(0xffE2DECD))
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            incomeDetailsList.length,
        (index) =>
            ItemDetailsWidget(incomeDetailsModel: incomeDetailsList[index]),
      ),
    );

  }
}
