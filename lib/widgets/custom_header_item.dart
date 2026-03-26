import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utilts/asset_data.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';
class CustomHeaderItem extends StatelessWidget {
  const CustomHeaderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
       width: 232,
       height: 63,
       decoration: BoxDecoration(
         color: const Color(0xffFAFAFA),
         borderRadius: BorderRadius.circular(12)
       ),
      child: Row(
       children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SvgPicture.asset(AssetData.kFrame , width: 32, height: 32,),
          ),
         const  SizedBox(width: 3.5,),
          Column(
           mainAxisAlignment: MainAxisAlignment.center,                      
           children: [
             Text('Lekan Okeowo', style: Styles.textStyle16.copyWith(color: kTextColor),),
            const  SizedBox(height: 4),
         const Text(
           'Madraniadi20@gmail',
           style: TextStyle(
             fontSize: 12,
             fontWeight: FontWeight.w400,
             color: Color(0xffAAAAAA),
           ),
         )
           ],
         )
       ],
       ),
    );
  }
}

