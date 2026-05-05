import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      const  SizedBox(height: 24,),
        Text(
        'My card',
        style: Styles.textStyle20.copyWith(color: kTextColor),
      ),
       const  SizedBox(height: 20,),
       
       const  MyCardsPageView(),
      const  DotsIndicator(currentIndex: 0)
  ],
  );
  }
}