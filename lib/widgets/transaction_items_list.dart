import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utilts/asset_data.dart';
import 'package:responsive_dash_board/models/user_list_tile_model.dart';
import 'package:responsive_dash_board/widgets/user_list_tile_info_section.dart';

import '../generated/l10n.dart';

class TransactionItemsList extends StatelessWidget {
  const TransactionItemsList({super.key});
  static List<UserListTileInfoModel> listTransaction = [
    UserListTileInfoModel(
        image: AssetData.kFrame,
        userName: S.current.name,
        email: S.current.email),
    UserListTileInfoModel(
        image: AssetData.kFrame1,
        userName: S.current.name,
        email: S.current.email),
    UserListTileInfoModel(
        image: AssetData.kFrame,
        userName: S.current.name,
        email: S.current.email),
    UserListTileInfoModel(
        image: AssetData.kFrame,
        userName: S.current.name,
        email: S.current.email),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(listTransaction.length, (index) {
            return index == 0
                ? IntrinsicWidth(
                    child: UserListTileInfoSection(
                      userListTileInfoModel: listTransaction[index],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: IntrinsicWidth(
                      child: UserListTileInfoSection(
                        userListTileInfoModel: listTransaction[index],
                      ),
                    ),
                   );
        },)
      ),
    );
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return IntrinsicWidth(
              child: UserListTileInfoSection(
                userListTileInfoModel: listTransaction[index],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(left: 12),
              child: IntrinsicWidth(
                child: UserListTileInfoSection(
                  userListTileInfoModel: listTransaction[index],
                ),
              ),
            );
          }
        },
        itemCount: listTransaction.length,
      ),
    );
  }
}
