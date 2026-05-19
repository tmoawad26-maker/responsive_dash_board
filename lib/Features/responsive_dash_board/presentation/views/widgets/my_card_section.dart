import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/presentation/views/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
        currentPageIndex = pageController.page!.round();
        
    setState(() {});
    }
    
    );
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // const  SizedBox(height: 24,),
        Text(
        'My card',
        style: Styles.textStyle20(context).copyWith(color: kTextColor),
      ),
       const  SizedBox(height: 20,),
       
         MyCardsPageView(
        pageController: pageController,
       ),
        DotsIndicator(currentPageIndex: currentPageIndex),
       
  ],
  );
  }
}