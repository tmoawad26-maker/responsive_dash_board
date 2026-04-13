import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

class TransactionItems extends StatelessWidget {
  const TransactionItems({super.key , required this.transactionItemModel});
      final TransactionItemModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(transactionItemModel.image),
        const SizedBox(
          width: 3.5,
        ),
        Column(
          children: [
            Text(
              transactionItemModel.userName,
              style: Styles.textStyle16.copyWith(color: kTextColor),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
             transactionItemModel.email,
              style:
                  Styles.textStyle12.copyWith(color: const Color(0xffAAAAAA)),
            )
          ],
        )
      ],
    );
  }
}


