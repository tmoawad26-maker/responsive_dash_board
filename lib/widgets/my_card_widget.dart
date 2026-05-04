import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_card_details_section.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.only(right: 32 , top: 40),
      child:   CustomBackgroundContainer(
        child: Column(
          children: [
            MyCardDetailsSection(),
          ],
        ) 
        
        ),
    );
  }
}
