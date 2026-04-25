import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return   Expanded(
       child:   TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Styles.textStyle16.copyWith(
              color: const Color(0xffAAAAAA),
              fontWeight: FontWeight.w400
            ),
            border: const  OutlineInputBorder(),
            filled: true,
            fillColor: const Color(0xffFAFAFA),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12)
            )
          ),
        ),
     );
  }
}
