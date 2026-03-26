import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';

class InvoiceDate extends StatelessWidget {
  const InvoiceDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 134,
        height: 48,
        decoration: BoxDecoration(
          color: const Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Monthly',
                style: Styles.textStyle16.copyWith(
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
             const  Icon(Icons.arrow_downward, color: kTextColor)
            ],
          ),
        ));
  }
}
