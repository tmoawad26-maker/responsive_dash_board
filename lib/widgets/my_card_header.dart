import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';

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