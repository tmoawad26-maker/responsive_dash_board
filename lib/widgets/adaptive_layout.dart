import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/mobile_layout.dart';
class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
       return const  MobileLayout();
      } else if (constraints.maxWidth < 900) {
        return const Text('Tablet Layout');
      } else {
        return const Text('Desktop Layout');
      }
    });
  }
}