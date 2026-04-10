import 'package:flutter/material.dart';

import '../models/all_expenses_model.dart';
import 'expenses_list_items.dart';
class ActiveExpensesItems extends StatelessWidget {
  const ActiveExpensesItems({
    super.key,
    required this.allExpensesList,
    required this.selectedIndex,
    this.onTap,
    this.index
  });

  final List<AllExpensesModel> allExpensesList;
  final int selectedIndex;
  final Function()?onTap;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ExpensesListItems(
          allExpensesList: allExpensesList,
          idx: index!,
          selectedIndex: selectedIndex),
    );
  }
}
