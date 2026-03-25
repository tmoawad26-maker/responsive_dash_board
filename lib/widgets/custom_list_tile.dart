import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134,
      height: 48,
      child: ListTile(
        tileColor: Colors.white,
        leading: Text(
          'Monthly',
          style: Styles.textStyle16
              .copyWith(color: kTextColor, fontWeight: FontWeight.w500),
        ),
       
        trailing: const Icon(
          Icons.arrow_downward,
          color: kTextColor,
        ),
      ),
    );
  }
}
