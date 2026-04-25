import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class CustomerDataWidget extends StatelessWidget {
  const CustomerDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Customer name', style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w500, color: kTextColor
          ),),
          const  CustomTextField(
            hintText: 'Type customer name',
          )
        ],
      ),
    );
  }
}

