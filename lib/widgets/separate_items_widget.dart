
import 'package:flutter/material.dart';

class SeparateItemsWidget extends StatelessWidget {
  const SeparateItemsWidget({
    super.key,
    this.height
  });
      final double? height;
  @override
  Widget build(BuildContext context) {
    return   Divider(
      color: const  Color(0xffF1F1F1),
      height: height ?? 24,
      thickness: 1,
    );
  }
}