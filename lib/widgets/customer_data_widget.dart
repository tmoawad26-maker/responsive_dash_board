import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class CustomerDataWidget extends StatelessWidget {
  const CustomerDataWidget(
      {super.key, required this.title, required this.hintText, this.suffixIcon});
  final String title, hintText;
  final Icon? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w500, color: kTextColor),
        ),
        CustomTextField(hintText: hintText,suffixIcon: suffixIcon,)
      ],
    );
  }
}
