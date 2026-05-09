import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_dot_income_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails(
      {super.key, required this.title, required this.trailing, this.dotColor});
  final String title, trailing;
  final Color? dotColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomDotIncomeDetails(
        dotColor: dotColor ?? kPrimaryColor,
      ),
      title: Expanded(
        child: Text(
          title,
          style: Styles.textStyle16
              .copyWith(color: kTextColor, fontWeight: FontWeight.w400),
        ),
      ),
      trailing: Text(
        trailing,
        style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500, color: const Color(0xff208CC8)),
      ),
    );
  }
}
