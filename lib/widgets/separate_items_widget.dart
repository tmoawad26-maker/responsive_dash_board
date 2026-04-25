
import 'package:flutter/material.dart';

class SeparateItemsWidget extends StatelessWidget {
  const SeparateItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Divider(
      indent: 1,
      endIndent: 1,
      color: Color(0xffF1F1F1),
      height: 0,
      thickness: 1,
    );
  }
}