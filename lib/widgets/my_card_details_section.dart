import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_dash_board_details.dart';

class MyCardDetailsSection extends StatelessWidget {
  const MyCardDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //  const  SizedBox(height: 24,),
          Text(
          'My card',
          style: Styles.textStyle20.copyWith(color: kTextColor),
         
        ),
         const   CustomContainerCardWidget()
        ],
      ) 
      
      );
  }
}
class CustomContainerCardWidget extends StatelessWidget {
  const CustomContainerCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1.5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
        ),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name card',style: Styles.textStyle16.
            copyWith(color: const  Color(0xffffffff),
            fontWeight: FontWeight.w400
            ),
            
            )
          ],
        ),
      ),
    );
  }
}