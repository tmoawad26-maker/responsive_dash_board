import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utilts/asset_data.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/utilts/styles.dart';

class TransactionItems extends StatelessWidget {
  const TransactionItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AssetData.kFrame1),
        const SizedBox(
          width: 3.5,
        ),
        Column(
          children: [
            Text(
              'Madrani Andi',
              style: Styles.textStyle16.copyWith(color: kTextColor),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Madraniadi20@gmail',
              style:
                  Styles.textStyle12.copyWith(color: const Color(0xffAAAAAA)),
            )
          ],
        )
      ],
    );
  }
}
