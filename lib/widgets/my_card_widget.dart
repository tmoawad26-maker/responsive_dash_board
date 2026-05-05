import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_container_card_widget.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({super.key});

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  const  CustomBackgroundContainer(
      child: CustomContainerCardWidget() 
      );
  }
}

