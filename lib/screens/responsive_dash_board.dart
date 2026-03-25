import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_responsive_dash_board.dart';

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
      body: const  CustomResponsiveDashBoard(),
    );
  }
}