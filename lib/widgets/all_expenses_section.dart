import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import '../core/utilts/asset_data.dart';
import '../core/utilts/styles.dart';
import '../generated/l10n.dart';
import 'active_expenses_items.dart';
import 'custom_background_container.dart';

class AllExpensesSection extends StatefulWidget {
  const AllExpensesSection({super.key});

  @override
  State<AllExpensesSection> createState() => _AllExpensesSectionState();
}

class _AllExpensesSectionState extends State<AllExpensesSection> {
  List<AllExpensesModel> allExpensesList =  [
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: CustomBackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).all_expenses,
                  style: Styles.textStyle20
                      .copyWith(color: const Color(0xff064061)),
                ),
                const AllExpenses()
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AllExpensesItems(allExpensesList: allExpensesList),
          ],
        ),
      ),
    );
  }
}

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({
    super.key,
    required this.allExpensesList,
    required this.selectedIndex
  });

  final List<AllExpensesModel> allExpensesList;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        )
    );
  }
}



