import 'package:flutter/material.dart';
class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding
  });
  final  Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: padding ?? 20),
          child: child
      ),
    );
  }
}