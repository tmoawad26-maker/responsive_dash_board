import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/Features/responsive_dash_board/data/models/user_list_tile_model.dart';

class UserListTileInfoSection extends StatelessWidget {
  const UserListTileInfoSection({
    super.key,
    required this.userListTileInfoModel,
  });
  final UserListTileInfoModel userListTileInfoModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: SvgPicture.asset(
          AssetData.kFrame,
          width: 32,
          height: 32,
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          userListTileInfoModel.userName,
          // S.of(context).name,
          style: Styles.textStyle16(context).copyWith(color: kTextColor),
        ),
      ),
      subtitle: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          userListTileInfoModel.email,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffAAAAAA),
          ),
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: const Color(0xffFAFAFA),
    );
  }
}
