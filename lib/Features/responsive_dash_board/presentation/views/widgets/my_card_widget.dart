import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/custom_container_card_widget.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({super.key});

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const CustomContainerCardWidget();
  }
}
