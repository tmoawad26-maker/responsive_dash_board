import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card_details_section.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({super.key});

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return   CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const  MyCardDetailsSection(),
          GestureDetector(
            child:  DotsIndicator(currentIndex: currentIndex),
           
             )
        ],
      ) 
      
      );
  }
}

