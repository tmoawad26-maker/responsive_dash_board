import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import '../utilts/asset_data.dart';
import 'active_expenses_items.dart';

class AllExpensesSection extends StatefulWidget {
  const AllExpensesSection({super.key});

  @override
  State<AllExpensesSection> createState() => _AllExpensesSectionState();
}

class _AllExpensesSectionState extends State<AllExpensesSection> {
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
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                    child: ActiveExpensesItems(allExpensesList: allExpensesList,
                        index: index,
                        onTap: ()
                        {
                          if (selectedIndex != index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          }
                        },
                        selectedIndex: selectedIndex),
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

