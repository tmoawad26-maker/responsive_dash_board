import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';

import '../core/utilts/styles.dart';
class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice',style: Styles.textStyle20.copyWith(
          color: kTextColor
        ),),
         CircleAvatar(
         radius: 17,
          backgroundColor: Colors.grey.withOpacity(0.1),
          child: const Icon(Icons.add ,size: 20, color: kPrimaryColor,),
        )
      ],
    );
  }
}