import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';
import 'package:responsive_dash_board/widgets/separate_items_widget.dart';
import 'package:responsive_dash_board/widgets/transaction_history_widget.dart';

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
        currentPageIndex = pageController.page!.toInt();
        
    setState(() {});
    }
    
    );
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return CustomBackgroundContainer(
    child: Column(
      children: [
        const  SizedBox(height: 24,),
          Text(
          'My card',
          style: Styles.textStyle20.copyWith(color: kTextColor),
        ),
         const  SizedBox(height: 20,),
         
           MyCardsPageView(
          pageController: pageController,
         ),
          DotsIndicator(currentPageIndex: currentPageIndex),
         const  SeparateItemsWidget(
          height: 40,
         ),
       const   TransactionHistoryWidget()
    ],
    ),
  );
  }
}