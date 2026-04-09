import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_dash_board_details.dart';
import 'package:responsive_dash_board/widgets/custom_list_tile.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/list_all_expenses_items.dart';

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
            child: SingleChildScrollView(
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
                 const  Row(
                    children: [
                      Expanded(child: ListAllExpensesItems())
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

