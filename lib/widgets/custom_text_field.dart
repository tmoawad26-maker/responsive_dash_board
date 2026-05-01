import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
   return  TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Styles.textStyle16.copyWith(
                color: const Color(0xffAAAAAA),
            ),
            border: buildOutlineInputBorder(),
            filled: true,
            fillColor: const Color(0xffFAFAFA),
            enabledBorder: buildOutlineInputBorder()
            )
        );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
          );
  }
}
