import 'package:flutter/material.dart' ;

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer(
      {super.key,
      required this.child,
      this.padding,
      this.containerColor, this.height});
  final Widget child;
  final double? padding;
  final Color? containerColor;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: containerColor ?? Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
          padding: EdgeInsets.all(padding ?? 20),
          child: child),
    );
  }
}
