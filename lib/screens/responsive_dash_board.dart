import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/custom_responsive_dash_board.dart';

import '../utilts/constants.dart';

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        drawer: const  CustomDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: kLeadingColor
          ),
          backgroundColor: kPrimaryColor,
          title: const  Text('Responsive Dashboard'),
          titleTextStyle: const  TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w400
          ),
        ),
        body: const  CustomResponsiveDashBoard(),
      ),
    );
  }
}

