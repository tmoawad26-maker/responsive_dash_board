import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/custom_list_tile.dart';

import '../core/utilts/constants.dart';
import '../generated/l10n.dart';

class ListDrawerItems extends StatefulWidget {
  const ListDrawerItems({super.key});
  static  List<DrawerItemModel> drawerItemModel = [
    DrawerItemModel(title: S.current.title, icon: Icons.dashboard),
    DrawerItemModel(title: S.current.transactions, icon: Icons.description),
     DrawerItemModel(title: S.current.wallet_account, icon: Icons.wallet),
     DrawerItemModel(title: S.current.investments , icon: Icons.account_balance),
  ];

  @override
  State<ListDrawerItems> createState() => _ListDrawerItemsState();
}

class _ListDrawerItemsState extends State<ListDrawerItems> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: CustomListTile(
            drawerItemModel: ListDrawerItems.drawerItemModel[index],
            onTap: () => setState(() {
              if (currentIndex != index) {
                currentIndex = index;
              }
            }
            ),
            isActive: currentIndex == index,
            textColor:
                currentIndex == index ? kPrimaryColor : const Color(0xff064061),
            iconColor: currentIndex == index ? kPrimaryColor : Colors.grey,
          ),
        );
      },
      itemCount: ListDrawerItems.drawerItemModel.length,
    );
  }
}
