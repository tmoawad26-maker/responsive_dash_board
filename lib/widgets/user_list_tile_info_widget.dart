import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';

class UserListTileInfoWidget extends StatelessWidget {
  const UserListTileInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: SvgPicture.asset(
        AssetData.kFrame,
        width: 32,
        height: 32,
      ),
    );
  }
}