import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.height, this.onPressed});
  final double height;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Add more details',
            style: Styles.textStyle18.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
