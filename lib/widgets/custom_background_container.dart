import 'package:flutter/material.dart' ;

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer(
      {super.key,
      required this.child,
      this.padding,
      this.width,
      this.height,
      this.containerColor});
  final Widget child;
  final double? padding, width, height;
  final Color? containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: containerColor ?? Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: padding ?? 20, vertical: padding ?? 20),
          child: child),
    );
  }
}
