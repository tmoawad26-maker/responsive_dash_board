import 'package:flutter/material.dart';

class CustomDotIncomeDetails extends StatelessWidget {
  const CustomDotIncomeDetails({super.key, required this.dotColor});
  final Color dotColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          color: dotColor, borderRadius: BorderRadius.circular(12)),
    );
  }
}
