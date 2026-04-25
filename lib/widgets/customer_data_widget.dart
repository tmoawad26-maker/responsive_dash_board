import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class CustomerDataWidget extends StatelessWidget {
  const CustomerDataWidget(
      {super.key,
        required this.title,
        required this.hintText
      }
      );
  final String title, hintText;
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
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hintText: hintText)
      ],
    );
  }
}
