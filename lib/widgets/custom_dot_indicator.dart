import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
      final bool isActive ;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(top: 27 - 19),
      width: isActive ? 32 : 8,
      height: 8,
      decoration:   BoxDecoration(
       shape: BoxShape.circle,
        color: isActive ? kPrimaryColor : const  Color(0xffE8E8E8)
      ),
    );
  }
}
