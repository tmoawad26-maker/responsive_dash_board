import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import '../core/utilts/styles.dart';
import '../generated/l10n.dart';
import 'all_expenses_items.dart';
import 'custom_background_container.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomBackgroundContainer(
            padding: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).allExpenses,
                    style: Styles.textStyle20
                        .copyWith(color: const Color(0xff064061)),
                  ),
                  const AllExpenses()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const AllExpensesItems(),
            ],
          ),
        ),
    );
  }
}
