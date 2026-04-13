import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({
    super.key,
    this.circleAvatarColor,
    this.iconBackgroundColor,
    required this.imageUrl,
    this.imageColor,
  });
  final Color? circleAvatarColor , iconBackgroundColor , imageColor;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 17,
            backgroundColor: circleAvatarColor ?? Colors.blue.shade300,
            child:  ColorFiltered(
              colorFilter:   ColorFilter.mode(
                imageColor!,
              BlendMode.srcIn, // changes the color while keeping shape
            ),
                child: Center(child: SvgPicture.asset(imageUrl)))
          ),
        Icon(Icons.arrow_forward_ios,
          color:
         iconBackgroundColor ??
         Colors.white, size: 24,)
        ],
    );
  }
}