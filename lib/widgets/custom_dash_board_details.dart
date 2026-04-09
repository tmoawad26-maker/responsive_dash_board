import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_header_card.dart';

class CustomDashBoardDetails extends StatelessWidget {
  const CustomDashBoardDetails(
      {super.key,
      this.cardColor,
      this.titlecolor,
      this.subTitleColor,
      required this.isActive,
      required this.allExpensesModel,
      this.amountColor,
      this.circleAvatarColor,
      this.iconColor,
      this.iconBackgroundColor,
      this.icon});
  final AllExpensesModel allExpensesModel;
  final Color? cardColor,
      titlecolor,
      subTitleColor,
      amountColor,
      circleAvatarColor,
      iconColor,
      iconBackgroundColor,
      icon;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: cardColor ?? kPrimaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeaderCard(
                circleAvatarColor: circleAvatarColor,
                iconColor: iconColor,
                iconBackgroundColor: iconBackgroundColor,
              ),
              const SizedBox(height: 34),
              Text(
                allExpensesModel.title,
                style: Styles.textStyle16
                    .copyWith(color: titlecolor ?? Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                allExpensesModel.subTitle,
                style: Styles.textStyle14.copyWith(
                    color: subTitleColor ?? const Color(0xffFAFAFA)),
              ),
              Expanded(
                child: Text(
                  allExpensesModel.price,
                  style: Styles.textStyle24
                      .copyWith(color: amountColor ?? Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
