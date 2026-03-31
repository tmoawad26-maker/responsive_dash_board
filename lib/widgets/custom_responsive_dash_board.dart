import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/mobile_layout.dart';

class CustomResponsiveDashBoard extends StatelessWidget {
  const CustomResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return   AdaptiveLayout(
      moilbeLayout: (context) => const  MobileLayout(),
      tabletLayout: (context) => const Text('Tablet Layout'),
      desktopLayout: (context) => const  DashBoardDesktopLayout(),
    );
  }
}
