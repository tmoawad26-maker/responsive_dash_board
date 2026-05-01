import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/l10n.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_layout_widget.dart';

import '../core/utilts/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        // appBar: AppBar(
        //   iconTheme: const IconThemeData(
        //     color: kLeadingColor
        //   ),
        //   // backgroundColor: kPrimaryColor,
        //   // title: Text(S.of(context).title),
        //   // titleTextStyle: const  TextStyle(
        //   //   color: Colors.white,
        //   //   fontSize: 22,
        //   //   fontWeight: FontWeight.w400
        //   // ),
        // ),
        body: DashboardLayoutWidget(),
      ),
    );
  }
}

