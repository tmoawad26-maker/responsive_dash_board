import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';

class DashboardLayoutWidget extends StatelessWidget {
  const DashboardLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   AdaptiveLayout(
      mobileLayout: (context) => const  DashboardMobileLayout(),
      tabletLayout: (context) => const Text('Tablet Layout'),
      desktopLayout: (context) => const  DashboardDesktopLayout(),
    );
  }
}
