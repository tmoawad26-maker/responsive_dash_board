import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/dash_board_tablet_layout.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/dashboard_desktop_layout.dart';


class DashboardLayoutWidget extends StatelessWidget {
  const DashboardLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   AdaptiveLayout(
      mobileLayout: (context) => const  DashBoardMobileLayout(),
      tabletLayout: (context) => const DashBoardTabletLayout(),
      desktopLayout: (context) => const  DashboardDesktopLayout(),
    );
  }
}
