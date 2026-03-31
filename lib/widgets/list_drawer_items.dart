import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utilts/constants.dart';
import 'package:responsive_dash_board/widgets/custom_list_tile.dart';

class ListDrawerItems extends StatefulWidget {
  const ListDrawerItems({super.key});
  static const List<DrawerItemModel> drawerItemModel = [
    DrawerItemModel(title: 'Dashboard', icon: Icons.dashboard),
    DrawerItemModel(title: ' My Transactions', icon: Icons.description),
    DrawerItemModel(title: 'Wallet Account', icon: Icons.wallet),
    DrawerItemModel(title: 'My Investments', icon: Icons.account_balance),
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
