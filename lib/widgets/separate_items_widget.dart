
import 'package:flutter/material.dart';

class SeparateItemsWidget extends StatelessWidget {
  const SeparateItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Divider(
      color: Color(0xffF1F1F1),
      height: 24,
      thickness: 1,
    );
  }
}