import 'package:flutter/material.dart';
class CustomHeaderCard extends StatelessWidget {
  const CustomHeaderCard({
    super.key,
    this.circleAvatarColor,
    this.iconColor,
    this.iconBackgroundColor,
  });
  final Color? circleAvatarColor , iconColor , iconBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: circleAvatarColor ?? Colors.blue.shade300,
            child:  Icon(
              Icons.money,
              color: iconColor ?? Colors.white,
              size: 30,
            ),
          ),
        Icon(Icons.arrow_forward_ios, color:  
         iconBackgroundColor ??       
         Colors.white, size: 24,)
        ],
    );
  }
}