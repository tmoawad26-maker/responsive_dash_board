import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/all_expenses_model.dart';
import '../utilts/constants.dart';
import 'custom_dash_board_details.dart';

class ExpensesListItems extends StatelessWidget {
  const ExpensesListItems({
    super.key,
    required this.allExpensesList,
    required this.selectedIndex,
    required this.idx,
  });

  final List<AllExpensesModel> allExpensesList;
  final int selectedIndex;
  final int idx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ExpensesItems(
        allExpensesModel: allExpensesList[idx],
        isActive: selectedIndex == idx,
        cardColor: selectedIndex == idx ? kPrimaryColor : kListTileColor,
        image: SvgPicture.asset(allExpensesList[idx].image),
        titleColor: selectedIndex == idx ? Colors.white : kTextColor,
        dateColor: selectedIndex == idx
            ? const Color(0xffFAFAFA)
            : const Color(0xffAAAAAA),
        amountColor:
            selectedIndex == idx ? Colors.white : const Color(0xff4EB7F2),
        iconBackgroundColor: selectedIndex == idx ? Colors.white : kTextColor,
        circleAvatarColor: selectedIndex == idx
            ? Colors.blue.withOpacity(0.3)
            : Colors.grey.withOpacity(0.2),
        imageColor:
            selectedIndex == idx ? Colors.white : const Color(0xff4EB7F2),
      ),
    );
  }
}
