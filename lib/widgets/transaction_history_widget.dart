import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';
import 'package:responsive_dash_board/widgets/transaction_history_list_view.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       const  TransactionHistoryHeaderWidget(),
       const  SizedBox(height: 16,),
       Text('13 April 2022',style: Styles.textStyle16.copyWith(
        fontWeight: FontWeight.w500,
        color: const  Color(0xffAAAAAA)
       ),),

       const   SizedBox(height: 56,),
       const   TransactionHistoryListView()
      ],
    );
  }
}

class TransactionHistoryHeaderWidget extends StatelessWidget {
  const TransactionHistoryHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.textStyle20.copyWith(color: kTextColor),
        ),
        Text(
          'See all',
          style: Styles.textStyle16
              .copyWith(color: kPrimaryColor, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}



