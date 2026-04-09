import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/widgets/custom_dash_board_details.dart';

class ListAllExpensesItems extends StatefulWidget {
  const ListAllExpensesItems({super.key});
  static const List<AllExpensesModel> allExpensesList = [
    AllExpensesModel(
      title: 'Balance',
      subTitle: 'April 2022',
      date: '2022',
      price: '\$20,129',
    ),
    AllExpensesModel(
      title: 'Income',
      subTitle: 'April 2023',
      date: '2023',
      price: '\$20,129',
    ),
    AllExpensesModel(
      title: 'Expenses',
      subTitle: 'April 2000',
      date: '2000',
      price: '\$21,129',
    ),
  ];

  @override
  State<ListAllExpensesItems> createState() => _ListAllExpensesItemsState();
}

class _ListAllExpensesItemsState extends State<ListAllExpensesItems> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 216,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            child: GestureDetector(
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
                // Handle tap event
              },
              child: CustomDashBoardDetails(
                  isActive: selectedIndex == index,
                  cardColor:
                      selectedIndex == index ? kPrimaryColor : kListTileColor,
                  titlecolor:
                      selectedIndex == index ? Colors.white : kTextColor,
                  subTitleColor: selectedIndex == index
                      ? const Color(0xffFAFAFA)
                      : const Color(0xffAAAAAA),
                  amountColor: selectedIndex == index
                      ? Colors.white
                      : const Color(0xff4EB7F2),
                  iconBackgroundColor:
                      selectedIndex == index ? Colors.white : kTextColor,
                  circleAvatarColor: selectedIndex == index
                      ? Colors.blue.withOpacity(0.3)
                      : Colors.grey.withOpacity(0.2),
                  iconColor: selectedIndex == index
                      ? Colors.white
                      : const Color(0xff4EB7F2),
                  allExpensesModel:
                      ListAllExpensesItems.allExpensesList[index]),
            ),
          );
        },
        itemCount: ListAllExpensesItems.allExpensesList.length,
      ),
    );
  }
}