import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_header_card.dart';

class CustomDashBoardDetails extends StatelessWidget {
  const CustomDashBoardDetails(
      {super.key,
      required this.title,
      this.subTitle,
      this.amount,
       this.cardColor,
       this.titlecolor,
       this.subTitleColor,
       this.amountColor, this.circleAvatarColor, this.iconColor, this.iconBackgroundColor, this.icon});
  final String title;
  final String? subTitle, amount;
  final Color? cardColor, titlecolor, subTitleColor, amountColor ,
   circleAvatarColor , iconColor , iconBackgroundColor , icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        height: 216,
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
                title,
                style: Styles.textStyle16
                    .copyWith(color: titlecolor ?? Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 70,
                height: 17,
                child: Text(
                  subTitle ?? 'April 2022',
                  style: Styles.textStyle14
                      .copyWith(color: subTitleColor ??  const Color(0xffFAFAFA)),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 89,
                height: 29,
                child: Text(
                  amount ?? '\$20,129',
                  style: Styles.textStyle24
                      .copyWith(color: amountColor ?? Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
