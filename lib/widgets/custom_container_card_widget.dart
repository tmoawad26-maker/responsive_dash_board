import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/widgets/my_card_header.dart';

class CustomContainerCardWidget extends StatelessWidget {
  const CustomContainerCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor,
          image: const DecorationImage(
            image: AssetImage(AssetData.backgroundCard),
            fit: BoxFit.fill,
          ),
        ),
        child:    Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const MyCardHeader(),
          const  Expanded(child: SizedBox()),
           Padding(
             padding: const EdgeInsets.only(right: 24.0),
             child: Column(
              children: [
                 Text('0918 8124 0042 8129',style: Styles.textStyle16.copyWith(
                color: const Color(0xffffffff),
              ),),
              Text('12/20-124',style: Styles.textStyle16.copyWith(
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w400,
              ),),
              ],
             ),
           ),
            const  Expanded(child:   SizedBox(height: 54 - 28)),
          ],
        ),
      ),
    );
  }
}
