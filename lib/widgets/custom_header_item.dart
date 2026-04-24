import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/widgets/user_list_tile_info_widget.dart';

import '../core/utilts/constants.dart';
import '../core/utilts/styles.dart';
import '../generated/l10n.dart';

class CustomHeaderItem extends StatelessWidget {
  const CustomHeaderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      width: 232,
      height: 63,
      decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
        const   UserListTileInfoWidget(),
          const SizedBox(
            width: 3.5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).name,
                style: Styles.textStyle16.copyWith(color: kTextColor),
              ),
              const SizedBox(height: 4),
               Text(
               S.of(context).email,
                style: const  TextStyle(
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


