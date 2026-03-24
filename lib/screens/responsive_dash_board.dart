import 'package:flutter/material.dart';

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
    );
  }
}