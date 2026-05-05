import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
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


class MyCardHeader extends StatelessWidget {
  const MyCardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Name card',
        style: Styles.textStyle16.copyWith(
          color: const Color(0xffffffff),
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        'Syah Bandi',
        style: Styles.textStyle20.copyWith(
          color: const Color(0xffffffff),
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: SvgPicture.asset(
        AssetData.kGallery2,
      ),
    );
  }
}