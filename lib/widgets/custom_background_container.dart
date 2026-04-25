import 'package:flutter/material.dart' ;

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer(
      {super.key,
      required this.child,
      this.padding,
      this.containerColor});
  final Widget child;
  final double? padding;
  final Color? containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerColor ?? Colors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
          padding: EdgeInsets.all(padding ?? 20),
          child: child),
    );
  }
}
