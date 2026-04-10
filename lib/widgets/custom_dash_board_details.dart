import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/expenses_header.dart';

class ExpensesItems extends StatelessWidget {
  const ExpensesItems(
      {super.key,
      this.cardColor,
      this.titleColor,
      this.dateColor,
       this.isActive = false,
        this.idxItems,
      required this.allExpensesModel,
      this.amountColor,
      this.circleAvatarColor,
      this.iconBackgroundColor,
      this.icon, this.imageColor, required this.image});
  final AllExpensesModel allExpensesModel;
  final Color? cardColor,
      titleColor,
      dateColor,
      amountColor,
      circleAvatarColor,
      iconBackgroundColor,
    imageColor,
      icon;

  final bool isActive;
    final int? idxItems ;
    final Widget image;
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
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpensesHeader(
                circleAvatarColor: circleAvatarColor,
                imageUrl: allExpensesModel.image,
                imageColor: imageColor,
                iconBackgroundColor: iconBackgroundColor,
              ),
              const SizedBox(height: 34),
              Text(
                allExpensesModel.title,
                style: Styles.textStyle16
                    .copyWith(color: titleColor ?? Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(allExpensesModel.date, style: Styles.textStyle14.copyWith(
                color: dateColor ?? const  Color(0xffAAAAAA)
              ),),
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
