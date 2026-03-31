import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_dash_board_details.dart';
import 'package:responsive_dash_board/widgets/custom_list_tile.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 20 / 15,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Expenses',
                      style: Styles.textStyle20
                          .copyWith(color: const Color(0xff064061)),
                    ),
                   const  AllExpenses() 
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Expanded(
                          child: CustomDashBoardDetails(title: 'Balance')),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: CustomDashBoardDetails(
                          title: 'Income',
                          cardColor: kListTileColor,
                          titlecolor: kTextColor,
                          subTitleColor: const Color(0xffAAAAAA),
                          amountColor: const Color(0xff4EB7F2),
                          circleAvatarColor: Colors.grey.withOpacity(0.2),
                          iconColor: Colors.blue,
                          iconBackgroundColor: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: CustomDashBoardDetails(
                          title: 'Expenses',
                          cardColor: kListTileColor,
                          titlecolor: kTextColor,
                          subTitleColor: const Color(0xffAAAAAA),
                          amountColor: const Color(0xff4EB7F2),
                          circleAvatarColor: Colors.grey.withOpacity(0.2),
                          iconColor: Colors.blue,
                          iconBackgroundColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
