import 'package:flutter/material.dart';

import '../core/utilts/asset_data.dart';
import '../generated/l10n.dart';
import '../models/all_expenses_model.dart';
import 'active_expenses_items.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({
    super.key,
  });

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  List<AllExpensesModel> allExpensesList = [
    AllExpensesModel(
        title: S.current.balance,
        date: '${S.current.first_month} 2022',
        price: '\$20,129',
        image: AssetData.kMoney),
    AllExpensesModel(
        title: S.current.income,
        date: '${S.current.march_month} 2023',
        price: '\$20,129',
        image: AssetData.kCardReceive),
    AllExpensesModel(
        title: S.current.expenses,
        date: '${S.current.second_month} 2000',
        price: '\$21,129',
        image: AssetData.kCardSend),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      allExpensesList.length,
      (index) => Expanded(
        child: ActiveExpensesItems(
            allExpensesList: allExpensesList,
            index: index,
            onTap: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            selectedIndex: selectedIndex),
      ),
    ));
  }
}
