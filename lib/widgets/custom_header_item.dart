import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/generated/l10n.dart';
import 'package:responsive_dash_board/models/user_list_tile_model.dart';
import 'package:responsive_dash_board/widgets/user_list_tile_info_section.dart';


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
      child:   UserListTileInfoSection(
        userListTileInfoModel: UserListTileInfoModel(
            image: AssetData.kFrame,
            userName: S.of(context).name,
            email: S.of(context).email),
      ),
    );
  }
}



