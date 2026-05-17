import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/core/utilts/size_config.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/dashboard_layout_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return   SafeArea(
      child: Scaffold(
        appBar: MediaQuery.sizeOf(context).width < 800 ? AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffFAFAFA),
        ) : null,
        drawer: const CustomDrawer(),
        body: const DashboardLayoutWidget(),
      ),
    );
  }
}
