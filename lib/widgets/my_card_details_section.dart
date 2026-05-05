import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_container_card_widget.dart';
class MyCardDetailsSection extends StatelessWidget {
  const MyCardDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        'My card',
        style: Styles.textStyle20.copyWith(color: kTextColor),
       
      ),
       const  SizedBox(height: 20,),
        const  CustomContainerCardWidget()
      ],
    );
  }
}


