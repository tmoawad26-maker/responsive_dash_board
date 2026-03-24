import 'package:flutter/material.dart';
import 'package:responsive_dash_board/screens/responsive_dash_board.dart';

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveDashBoard(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF7F9FA),
      ),
    );
  }
}
