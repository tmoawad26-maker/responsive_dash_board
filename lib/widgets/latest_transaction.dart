import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utilts/styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w500, color: const Color(0xff064061)),
        ),
      ],
    );
  }
}
