import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/core/utilts/constants.dart';
import 'package:responsive_dash_board/core/utilts/styles.dart';
import 'package:responsive_dash_board/models/user_list_tile_model.dart';

class UserListTileInfoSection extends StatelessWidget {
  const UserListTileInfoSection({
    super.key, required this.userListTileInfoModel,
  });
    final UserListTileInfoModel userListTileInfoModel; 
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
     decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
        SvgPicture.asset(
          AssetData.kFrame,
          width: 32,
          height: 32,
        ),
          const SizedBox(
            width: 3.5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userListTileInfoModel.userName,
                // S.of(context).name,
                style: Styles.textStyle16.copyWith(color: kTextColor),
              ),
              const SizedBox(height: 4),
               Text(
               userListTileInfoModel.email,
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
