import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utilts/constants.dart';

import '../utilts/styles.dart';
class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
      child: Row(
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
      ),
    );
  }
}