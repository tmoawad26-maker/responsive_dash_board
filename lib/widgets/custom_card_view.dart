import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_dash_board_details.dart';
import 'package:responsive_dash_board/widgets/custom_list_tile.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/list_all_expenses_items.dart';

import '../utilts/asset_data.dart';
import 'acitve_expenses_item.dart';
import 'expenses_list_items.dart';

class CustomCardView extends StatefulWidget {
  const CustomCardView({super.key});

  @override
  State<CustomCardView> createState() => _CustomCardViewState();
}

class _CustomCardViewState extends State<CustomCardView> {
  List<AllExpensesModel> allExpensesList = const [
    AllExpensesModel(
        title: 'Balance',
        date: 'April 2022',
        price: '\$20,129',
        image: AssetData.kMoney),
    AllExpensesModel(
        title: 'Income',
        date: 'March 2023',
        price: '\$20,129',
        image: AssetData.kCardReceive),
    AllExpensesModel(
        title: 'Expenses',
        date: 'Jan 2000',
        price: '\$21,129',
        image: AssetData.kCardSend),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 20 / 17,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
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
                    const AllExpenses()
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                    children: List.generate(
                  allExpensesList.length,
                  (index) => Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (selectedIndex != index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        }
                      },
                      child: ExpensesListItems(
                          allExpensesList: allExpensesList,
                          idx: index,
                          selectedIndex: selectedIndex),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
